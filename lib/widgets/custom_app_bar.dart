import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
 final String title;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child:  Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          CustomSearchIcon(icon: icon,),
        ],
      ),
    );
  }
}


