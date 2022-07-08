import 'package:flutter/material.dart';

import 'colum_date_picker_widget.dart';

class TimePeroidSelectionWidget extends StatefulWidget {
  const TimePeroidSelectionWidget({Key? key}) : super(key: key);

  @override
  State<TimePeroidSelectionWidget> createState() =>
      _TimePeroidSelectionWidgetState();
}

class _TimePeroidSelectionWidgetState extends State<TimePeroidSelectionWidget> {
  final _toTextEditingController = TextEditingController();
  final _fromTextEditingController = TextEditingController();

  DateTime? _toDateTime;
  DateTime? _fromDateTime;
  bool isDateAreVaild = true;

  @override
  void dispose() {
    _toTextEditingController.dispose();
    _fromTextEditingController.dispose();
    super.dispose();
  }

  toDateSetter(DateTime dateTime) {
    _toDateTime = dateTime;
    checkDates();
  }

  fromDateSetter(DateTime dateTime) {
    _fromDateTime = dateTime;
    checkDates();
  }

  checkDates() {
    if (_fromDateTime != null && _toDateTime != null) {
      setState(() {
        isDateAreVaild = _fromDateTime!.isBefore(_toDateTime!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [
          ColumnDatePickerWidget(
            lable: 'From Date',
            controller: _fromTextEditingController,
            maxWidth: constraints.maxWidth * 0.1,
            minWidth: 150,
            valueSetter: fromDateSetter,
          ),
          ColumnDatePickerWidget(
            lable: 'To Date',
            controller: _toTextEditingController,
            maxWidth: constraints.maxWidth * 0.1,
            minWidth: 150,
            valueSetter: toDateSetter,
          ),
          isDateAreVaild
              ? const SizedBox()
              : const Text(
                  'Plz enter the valid date',
                  style: TextStyle(color: Colors.red),
                ),
        ],
      );
    });
  }
}
