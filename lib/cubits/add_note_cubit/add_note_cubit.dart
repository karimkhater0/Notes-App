
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_project/constants.dart';
import 'package:notes_app_project/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color selectedColor = Colors.amber;

  void addNote(NoteModel note) async{
    emit(AddNoteLoading());
    note.color = selectedColor.toARGB32();
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    }on Exception catch(e){
      emit(AddNoteFailure(errMessage: e.toString()));
    }

  }
}
