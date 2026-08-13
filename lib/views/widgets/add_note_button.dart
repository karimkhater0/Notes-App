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
      child: CustomScrollView(
        slivers: [

          const SliverToBoxAdapter(child: CustomTextField(hint: "Title",)),
          const SliverToBoxAdapter(child: SizedBox(height: 16,)),
          const SliverToBoxAdapter(child: CustomTextField(hint: "Content", maxLines: 5,)),


          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(alignment: Alignment.bottomCenter, child: CustomButton(label: "Add", onPressed: (){})),
          ),
        ],
      ),
    );
  }
}
