import 'package:flutter/material.dart';
import 'package:notes_app_project/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines, this.onSaved, this.onChanged});
  final String hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return "Field is required";
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildTextFieldBorder(),
        enabledBorder: buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(color: kPrimaryColor),
        hintText: hint,
      ),

    );
  }


}
OutlineInputBorder buildTextFieldBorder({Color? color}) => OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(color: color ?? Colors.white),
);