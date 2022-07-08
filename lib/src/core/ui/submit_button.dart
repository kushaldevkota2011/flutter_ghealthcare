import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    this.onPressed,
    this.title,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        splashFactory: InkSplash.splashFactory,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        elevation: 3,
        primary: Colors.black,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: Colors.black12,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title ?? 'Submit',
        style:
            Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
      ),
    );
  }
}
