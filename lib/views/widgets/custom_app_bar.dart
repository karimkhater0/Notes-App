import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text("Notes", style: Theme.of(context).textTheme.titleLarge,)),

        Icon(Icons.search, size: 30,),

      ],
    );
  }
}
