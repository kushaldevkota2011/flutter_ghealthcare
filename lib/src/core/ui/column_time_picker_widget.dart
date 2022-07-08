import 'dart:math';

import 'package:flutter/material.dart';

class ColumnTimePickerWidget extends StatefulWidget {
  const ColumnTimePickerWidget({
    Key? key,
    this.lable,
    this.initialTime,
    this.maxWidth,
    this.minWidth,
  }) : super(key: key);
  final String? lable;
  final TimeOfDay? initialTime;
  final double? maxWidth;
  final double? minWidth;

  @override
  State<ColumnTimePickerWidget> createState() => _ColumnTimePickerWidgetState();
}

class _ColumnTimePickerWidgetState extends State<ColumnTimePickerWidget> {
  final _timeController = TextEditingController();

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: widget.lable != null ? 6 : 0),
        TextFormField(
          controller: _timeController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(color: Colors.black54, width: 1),
              ),
              constraints: BoxConstraints(
                maxWidth: max(
                    widget.maxWidth ?? double.infinity, widget.minWidth ?? 0.0),
                minWidth: widget.minWidth ?? 0.0,
              ),
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          onTap: () async {
            final result = await showTimePicker(
              context: context,
              initialTime: widget.initialTime ?? TimeOfDay.now(),
            );
            if (result != null) {
              _timeController.text = result.format(context);
            }
          },
        ),
      ],
    );
  }
}
