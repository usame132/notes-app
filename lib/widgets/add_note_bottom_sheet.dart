import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),SizedBox(
              height: 16,
            ),
            CustomBottun(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}


