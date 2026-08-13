import 'package:flutter/material.dart';
import 'package:notes_app_project/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines});
  final String hint;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildTextFieldBorder(),
        enabledBorder: buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(color: kPrimaryColor),
        hintText: hint,
      ),
      maxLines: maxLines,
    );
  }


}
OutlineInputBorder buildTextFieldBorder({Color? color}) => OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(color: color ?? Colors.white),
);