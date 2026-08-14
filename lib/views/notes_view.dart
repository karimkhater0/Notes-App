import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_project/views/widgets/notes_view_body.dart';

import 'widgets/add_note_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchNotes(),
      child: Scaffold(
        body: const NotesViewBody(),

        floatingActionButton: AddNoteButton(),
      ),
    );
  }
}


