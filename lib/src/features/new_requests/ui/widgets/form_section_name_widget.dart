import 'package:flutter/material.dart';

class FormSectionNameWidget extends StatelessWidget {
  const FormSectionNameWidget({Key? key, this.color, required this.sectionName})
      : super(key: key);
  final Color? color;
  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        sectionName,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
