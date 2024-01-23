import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
            color: const Color(0xffFFFFCD7B), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child:  Text(
                  "Build your career with Tharwat Samy",
                  style: TextStyle(color: Colors.black.withOpacity(.5)
                      , fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
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
                "Jan16 , 2024",
                style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
