import 'dart:math';

import 'package:flutter/material.dart';

typedef StringValueSetterGetter = String? Function(String?);

class ColumDropdownFormField extends StatelessWidget {
  const ColumDropdownFormField({
    Key? key,
    this.maxWidth,
    this.minWidth,
    required this.lable,
    required this.onChange,
    this.currentValue,
    this.values = const [],
    this.addSelectOption = true,
    this.validator,
    this.onSave,
    this.isEllipsis = false,
  }) : super(key: key);
  final double? maxWidth;
  final double? minWidth;
  final String lable;
  final ValueSetter<String?> onChange;
  final String? currentValue;
  final List<String> values;
  final bool addSelectOption;
  final StringValueSetterGetter? validator;
  final Function(String?)? onSave;
  final bool isEllipsis;

  @override
  Widget build(BuildContext context) {
    if (addSelectOption) values.insert(0, '--select--');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          onSaved: onSave,
          isExpanded: true,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxWidth: max(maxWidth ?? double.infinity, minWidth ?? 0.0),
            ),
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          items: values.isEmpty
              ? []
              : [
                  for (var value in values)
                    DropdownMenuItem(
                      child: isEllipsis
                          ? Text(
                              value,
                              overflow: TextOverflow.ellipsis,
                            )
                          : FittedBox(
                              fit: BoxFit.contain,
                              child: Text(value),
                            ),
                      value: value,
                    )
                ],
          value: currentValue ?? values.first,
          onChanged: onChange,
        ),
      ],
    );
  }
}
