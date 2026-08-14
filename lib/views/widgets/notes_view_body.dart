import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_project/models/note_model.dart';
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
          spacing: 25,
          children: [
            const SizedBox(),
            CustomAppBar(title: "Notes", icon: Icons.search, onPressed: () {},),

            Expanded(
              child: NotesList(),
            )
          ],
        ),
      ),
    );
  }
}

class NotesList extends StatelessWidget {
  const NotesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        final List<NoteModel> notes =  context.read<NotesCubit>().notes;
        return ListView.separated(
          itemBuilder: (context, index) => NoteItem(note: notes[index],),
          separatorBuilder: (_, _) => const SizedBox(height: 10,),
          itemCount: notes.length,

        );
      },
    );
  }
}
