import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_project/models/note_model.dart';
import 'package:notes_app_project/views/widgets/custom_app_bar.dart';
import 'package:notes_app_project/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Column(
            spacing: 20,
            children: [
              CustomAppBar(
                title: "Edit Note",
                icon: Icons.check,
                onPressed: (){
                  widget.note.title = title ?? widget.note.title;
                  widget.note.content = content ?? widget.note.content;
                  widget.note.save();
                  context.read<NotesCubit>().fetchNotes();
                  Navigator.pop(context);
                },
              ),

              CustomTextField(
                hint: widget.note.title,
                onChanged: (value) => title = value,
              ),

              CustomTextField(
                hint: widget.note.content,
                maxLines: 5,
                onChanged: (value) => content = value,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
