import 'package:flutter/material.dart';
import 'package:notes_app_project/constants.dart';

import 'add_note_bottom_sheet_widget.dart';

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
      onPressed: () =>
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => AddNoteBottomSheetWidget(),
          ),
    );
  }
}



