import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_note_view.dart';

import '../../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
        return EditNoteView();
      }
      )
      );},
      child: Container(
        padding: const EdgeInsets.only(top: 26, bottom: 26, left: 16),
        decoration: BoxDecoration(
            color:  Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child:  Text(
                  note.subTitle,
                  style: TextStyle(color: Colors.black.withOpacity(.5)
                      , fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNote();
                    },
                  icon: const  Padding(
                    padding:  EdgeInsets.only(bottom: 42,left: 32),
                    child:  Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                       color: Colors.black,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child:  Text(
                note.date,
                style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
