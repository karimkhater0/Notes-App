import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.amber,

      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 5,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text("Flutter Tips", style: TextStyle(color: Colors.black, fontSize: 26),),
            subtitle: Text(
              "Start your career in flutter ",
              style: TextStyle(color: Colors.black.withValues(alpha: .2), fontSize: 16),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.black, size: 28),),
          ),

          Text("May 20, 2023", style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }

}
