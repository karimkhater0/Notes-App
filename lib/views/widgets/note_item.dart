import 'package:flutter/material.dart';
import 'package:notes_app_project/models/note_model.dart';
import 'package:notes_app_project/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel? note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
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
              title: Text(note?.title ?? "", style: TextStyle(color: Colors.black, fontSize: 26),),
              subtitle: Text(
                note?.subtitle ?? "",
                style: TextStyle(color: Colors.black.withValues(alpha: .2), fontSize: 18),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.black, size: 28),),
            ),

            Text(note?.date ?? "", style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
    );
  }

}
