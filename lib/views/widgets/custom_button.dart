import 'package:flutter/material.dart';
import 'package:notes_app_project/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed, this.isLoading = false});

  final String label;
  final bool isLoading;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(16))
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),

      ),
    );

  }
}
