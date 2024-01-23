import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:  Column(children: [
         SizedBox(
          height: 50,
        ),
        CustomAppBar(title: "Edit Notes",icon: Icons.check,),
        SizedBox(height:15 ,),
        CustomTextField(hint: "Title",maxLines: 1,),
        SizedBox(height: 15,),
        CustomTextField(hint: "content",maxLines: 5,),
      ],),
    )
    ;
  }
}
