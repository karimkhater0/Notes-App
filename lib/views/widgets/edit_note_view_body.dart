import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/custom_app_bar.dart';
import 'package:notes_app_project/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Column(
            spacing: 20,
            children: [
              CustomAppBar(title: "Edit Note", icon: Icons.check, onPressed: (){},),

              CustomTextField(hint: "Title"),

              CustomTextField(hint: "Content", maxLines: 5,),


            ],
          ),
        ),
      ),
    );
  }
}
