import 'package:flutter/material.dart';
import 'package:notes_app_project/constants.dart';
import 'package:notes_app_project/views/widgets/custom_button.dart';
import 'package:notes_app_project/views/widgets/custom_text_field.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      shape: const CircleBorder(),
      child: const Icon(Icons.add, color: Colors.black,),
      onPressed: () => showModalBottomSheet(
        context: context,
        builder: (context) => AddNoteBottomSheetWidget(),
      ),
    );
  }
}

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
