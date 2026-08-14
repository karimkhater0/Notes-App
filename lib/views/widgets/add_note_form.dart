import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_project/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, content;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 16,
        children: [

          CustomTextField(hint: "Title", onSaved: (value) => title = value,),
          CustomTextField(hint: "Content", maxLines: 5, onSaved: (value) => content = value),


          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                label: "Add",
                isLoading: state is AddNoteLoading,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<AddNoteCubit>().addNote(
                      NoteModel(
                        title: title!,
                        subtitle: content!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.toARGB32(),
                      ),
                    );
                  } else {
                    autoValidateMode = AutovalidateMode.onUserInteraction;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}