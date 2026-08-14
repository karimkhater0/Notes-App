import 'package:flutter/material.dart';

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

          CustomTextField(hint: "Title", onSaved: (value)=> title = value,),
          CustomTextField(hint: "Content", maxLines: 5, onSaved: (value)=> content = value),


          CustomButton(
            label: "Add",
            onPressed: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              } else{
                autoValidateMode = AutovalidateMode.onUserInteraction;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}