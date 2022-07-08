import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef ValidatorFunction = String? Function(String?);

class ColumnFormField extends StatelessWidget {
  const ColumnFormField({
    Key? key,
    required this.lable,
    this.maxWidth,
    this.minWidth,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.onTap,
  }) : super(key: key);
  final double? maxWidth;
  final double? minWidth;
  final String lable;
  final TextEditingController? controller;
  final ValueSetter<String>? onChanged;
  final ValueSetter<String>? onFieldSubmitted;
  final ValueSetter<String?>? onSaved;
  final ValidatorFunction? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          onSaved: onSaved,
          onTap: onTap,
          validator: validator,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            isDense: true,
            constraints: BoxConstraints(
              maxWidth: max(maxWidth ?? double.infinity, minWidth ?? 0.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    );
  }
}
