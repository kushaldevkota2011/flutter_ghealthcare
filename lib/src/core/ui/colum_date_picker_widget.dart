import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../core.dart';

class ColumnDatePickerWidget extends StatelessWidget {
  const ColumnDatePickerWidget({
    Key? key,
    this.controller,
    required this.lable,
    this.maxWidth,
    this.minWidth,
    this.valueSetter,
    this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
  final String lable;
  final double? maxWidth;
  final double? minWidth;
  final ValueSetter<DateTime>? valueSetter;
  final ValidatorFunction? validator;

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
          validator: validator,
          decoration: InputDecoration(
            isDense: true,
            constraints: BoxConstraints(
              maxWidth: max(
                maxWidth ?? double.infinity,
                minWidth ?? 0.0,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onTap: () async {
            final data = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(
                const Duration(days: 365 * 150),
              ),
              lastDate: DateTime.now(),
            );

            if (data != null) {
              if (valueSetter != null) {
                valueSetter!(data);
              }
              controller?.text = DateFormat('MMM,d y').format(data);
            }
          },
        ),
      ],
    );
  }
}
