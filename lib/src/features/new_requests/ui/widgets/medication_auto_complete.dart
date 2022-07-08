import 'dart:async';

import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import '../../../../../injector_container.dart';
import '../../new_request.dart';

class MedicationAutoComplete extends StatefulWidget {
  const MedicationAutoComplete({
    Key? key,
    this.valueSetter,
    this.isDeviceSearch = false,
    this.isConditionSearch = false,
  }) : super(key: key);
  final ValueSetter<Coding>? valueSetter;
  final bool isDeviceSearch;
  final bool isConditionSearch;

  @override
  State<MedicationAutoComplete> createState() => _MedicationAutoCompleteState();
}

class _MedicationAutoCompleteState extends State<MedicationAutoComplete> {
  final TextEditingController _searchEditingCotroller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  late Timer _debounce;

  final LayerLink _layerLink = LayerLink();
  late OverlayEntry _overlayEntry;

  List<Coding> concept = [];

  late EncounterResourceRepository encounterRepository;

  @override
  void initState() {
    super.initState();

    encounterRepository = sl.get<EncounterResourceRepository>();

    _debounce = Timer(const Duration(milliseconds: 500), () {});

    _searchEditingCotroller.addListener(() {
      _onSearchChanged();
    });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context)?.insert(_overlayEntry);
      } else {
        _overlayEntry.remove();
      }
    });
  }

  _onSearchChanged() {
    if (_debounce.isActive) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _onChanged();
    });
  }

  Stream<List<Coding>> _onChanged() async* {
    if (_searchEditingCotroller.text.isNotEmpty) {
      var result = widget.isDeviceSearch
          ? await encounterRepository.searchDevice(_searchEditingCotroller.text)
          : widget.isConditionSearch
              ? await encounterRepository
                  .searchCondition(_searchEditingCotroller.text)
              : await encounterRepository
                  .searchMedication(_searchEditingCotroller.text);
      result.fold(
        (l) => throw l,
        (r) {
          concept = r;
        },
      );
      debugPrint("data ${concept.length}");

      yield concept;
    } else {
      if (concept.isNotEmpty) {
        setState(() {
          concept.clear();
        });
      }
      yield concept;
    }
  }

  @override
  void dispose() {
    _searchEditingCotroller.removeListener(() {
      _onSearchChanged();
    });
    _searchEditingCotroller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: CompositedTransformTarget(
          link: _layerLink,
          child: TextField(
            controller: _searchEditingCotroller,
            decoration: const InputDecoration(
              labelText: "Search",
              hintText: 'Enter the street Address',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              constraints: BoxConstraints(
                minHeight: 40,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black54,
                  width: 2.0,
                ),
              ),
            ),
            focusNode: _focusNode,
          ),
        ),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox?;
    OverlayEntry? entry;
    entry = OverlayEntry(
      builder: ((context) {
        return Positioned(
          width: (renderBox?.size.width ?? 0.0) - 32,
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: const Offset(0.0, 30),
            child: StreamBuilder(
                stream: _onChanged(),
                builder: (context, snapshot) {
                  return Container(
                    height: concept.length * 50,
                    constraints: const BoxConstraints(
                      minHeight: 50,
                      maxHeight: 300,
                    ),
                    child: Card(
                      elevation: 5,
                      child: Material(
                        color: Colors.transparent,
                        child: (snapshot.hasError)
                            ? Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.error_outline),
                                    SizedBox(width: 10),
                                    Text('Error occured,'),
                                  ],
                                ),
                              )
                            : (snapshot.connectionState ==
                                    ConnectionState.active)
                                ? const Center(
                                    child: CircularProgressIndicator.adaptive())
                                : (snapshot.hasData)
                                    ? CustomScrollView(
                                        semanticChildCount: 1,
                                        slivers: [
                                          SliverList(
                                            delegate:
                                                SliverChildBuilderDelegate(
                                                    (context, index) =>
                                                        ListTile(
                                                          title: Text(concept[
                                                                      index]
                                                                  .display ??
                                                              ''),
                                                          onTap: () async {
                                                            if (widget
                                                                    .valueSetter !=
                                                                null) {
                                                              widget.valueSetter!(
                                                                  concept[
                                                                      index]);
                                                            }
                                                            _searchEditingCotroller
                                                                .clear();
                                                            setState(() {
                                                              concept.clear();
                                                            });
                                                            entry?.remove();
                                                            _focusNode
                                                                .unfocus();
                                                          },
                                                        ),
                                                    childCount: concept.length),
                                          )
                                        ],
                                      )
                                    : const Center(
                                        child: Text('Search medication'),
                                      ),
                      ),
                    ),
                  );
                }),
          ),
        );
      }),
    );

    return entry;
  }
}
