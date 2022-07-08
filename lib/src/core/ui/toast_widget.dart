import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(BuildContext context, String message, {Color? backgroundColor}) {
  final fToast = FToast();
  fToast.init(context);
  fToast.showToast(
      child: _toastWidget(context, message, backGroundColor: backgroundColor));
}

Widget _toastWidget(
  BuildContext context,
  String message, {
  Color? backGroundColor,
}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: backGroundColor ?? Colors.black,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
