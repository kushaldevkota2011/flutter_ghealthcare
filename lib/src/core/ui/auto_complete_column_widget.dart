import 'dart:math';

import 'package:flutter/material.dart';

class AutoCompleteColumnWidget extends StatelessWidget {
  const AutoCompleteColumnWidget({
    Key? key,
    required this.autocompleteData,
    this.maxWidht,
    this.minWidth,
    required this.lable,
    this.onSelected,
  }) : super(key: key);
  final double? maxWidht;
  final double? minWidth;
  final Map<String, String> autocompleteData;
  final String lable;
  final Function(String)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lable),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          constraints: BoxConstraints(
            maxWidth: max(maxWidht ?? double.infinity, minWidth ?? 0.0),
            maxHeight: 30,
            minWidth: minWidth ?? 0.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.black45, width: 1),
          ),
          child: Autocomplete(
            onSelected: onSelected,
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              } else {
                return autocompleteData.values.where(
                  (element) => element.toLowerCase().contains(
                        textEditingValue.text.toLowerCase(),
                      ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
