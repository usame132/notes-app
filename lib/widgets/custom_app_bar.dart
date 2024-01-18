import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: const Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}


