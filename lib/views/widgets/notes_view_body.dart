import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/note_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Column(
          spacing: 20,
          children: [
            const SizedBox(),
            CustomAppBar(),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => NoteItem(),
                separatorBuilder: (_, _) => const SizedBox(height: 10,),
                itemCount: 3,

              ),
            )
          ],
        ),
      ),
    );
  }
}
