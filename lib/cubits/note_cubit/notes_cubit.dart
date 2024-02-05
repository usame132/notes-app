import 'package:bloc/bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';

import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNote ()  {
    var  notesBox= Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes= notesBox.values.toList();
    emit(NotesSuccess(notes));
}
}
