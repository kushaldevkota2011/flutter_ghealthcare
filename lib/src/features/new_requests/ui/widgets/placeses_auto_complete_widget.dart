import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_place/google_place.dart';

class PlacesesAutoComplete extends StatefulWidget {
  const PlacesesAutoComplete({
    Key? key,
    this.valueSetter,
  }) : super(key: key);

  final ValueSetter<Address>? valueSetter;

  @override
  State<PlacesesAutoComplete> createState() => _PlacesesAutoCompleteState();
}

class _PlacesesAutoCompleteState extends State<PlacesesAutoComplete> {
  late GooglePlace googlePlace;
  List<AutocompletePrediction> prediction = [];
  final TextEditingController _searchEditingCotroller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  final LayerLink _layerLink = LayerLink();
  late OverlayEntry _overlayEntry;

  @override
  void initState() {
    super.initState();
    String apiKey = dotenv.env['GOOGLE_PLACESES_API']!;
    googlePlace = GooglePlace(
      apiKey,
      proxyUrl: 'https://cors-anywhere.herokuapp.com/',
      headers: {},
    );

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context)?.insert(_overlayEntry);
      } else {
        _overlayEntry.remove();
      }
    });
  }

  @override
  void dispose() {
    _searchEditingCotroller.dispose();
    _focusNode.dispose();
    super.dispose();
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
            child: SizedBox(
              height: 200,
              child: Card(
                elevation: 5,
                child: Material(
                  color: Colors.transparent,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) => ListTile(
                      title: Text(prediction[i].description ?? ''),
                      onTap: () async {
                        final detail = await googlePlace.details
                            .get(prediction[i].placeId ?? "");

                        if (detail?.result?.addressComponents != null) {
                          if (widget.valueSetter != null) {
                            widget.valueSetter!(
                                detailResultToAddress(detail!.result!));
                          }
                        }
                        _searchEditingCotroller.clear();
                        setState(() {
                          prediction.clear();
                        });
                        entry?.remove();
                        _focusNode.unfocus();
                      },
                    ),
                    itemCount: prediction.length,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );

    return entry;
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
            onChanged: (value) async {
              if (value.isNotEmpty) {
                var result = await googlePlace.autocomplete.get(value);
                if (result != null && result.predictions != null && mounted) {
                  setState(() {
                    prediction = result.predictions!;
                  });
                }
              }
            },
          ),
        ),
      ),
    );
  }
}

Address detailResultToAddress(DetailsResult result) {
  Address address = Address(
    text: result.formattedAddress,
    city: result.addressComponents
        ?.firstWhere((element) => element.types?.contains('locality') ?? false)
        .longName,
    country: result.addressComponents
        ?.firstWhere((element) => element.types?.contains('country') ?? false)
        .longName,
    state: result.addressComponents
        ?.firstWhere((element) =>
            element.types?.contains('administrative_area_level_1') ?? false)
        .longName,
    postalCode: result.addressComponents
        ?.firstWhere(
            (element) => element.types?.contains('postal_code') ?? false)
        .longName,
    line: [
      (result.addressComponents
                  ?.firstWhere((element) =>
                      element.types?.contains('street_number') ?? false)
                  .longName ??
              '') +
          (' ' +
              (result.addressComponents
                      ?.firstWhere((element) =>
                          element.types?.contains('route') ?? false)
                      .longName ??
                  '')),
    ],
  );

  debugPrint(address.toString());

  return address;
}
