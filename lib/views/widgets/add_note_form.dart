import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key,});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =GlobalKey();

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(key: formKey ,
      autovalidateMode:autovalidateMode ,
      child: Column(
        children: [
          const   SizedBox(
            height: 24,
          ),
          CustomTextField(onsaved: (value)
          {
            title=value;
          },
            hint: "Title",
          ),
          const  SizedBox(
            height: 16,
          ),
          CustomTextField(onsaved: (value)
          {
            subTitle=value;
          },
            hint: "Content",
            maxLines: 5,
          ),const SizedBox(
            height: 16,
          ),
          CustomBottun(onTap: ()
          {
            if (formKey.currentState!.validate())
            {
              formKey.currentState!.save();
            }
            else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const  SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}


