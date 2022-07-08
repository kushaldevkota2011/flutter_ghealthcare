import 'package:flutter/material.dart';

class CheckBoxWithTitleWidget extends StatelessWidget {
  const CheckBoxWithTitleWidget(
      {Key? key, this.onChanged, required this.value, required this.title})
      : super(key: key);
  final ValueSetter<bool?>? onChanged;
  final bool value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          SizedBox(
            width:
                constraints.maxWidth < 660 ? constraints.maxWidth - 50 : null,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xff333333),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    });
  }
}
