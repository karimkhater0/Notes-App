import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/notes_view_body.dart';

import 'widgets/add_note_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),

      floatingActionButton: AddNoteButton(),
    );
  }
}


