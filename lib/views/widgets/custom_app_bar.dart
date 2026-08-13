import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPressed});

  final String title;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title, style: Theme.of(context).textTheme.titleLarge,)),

        IconButton(onPressed: onPressed, icon: Icon(icon, size: 30,),),

      ],
    );
  }
}
