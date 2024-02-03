import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomBottun extends StatelessWidget {
  const CustomBottun({super.key, this.onTap});
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20  ),
          ),
        ),
      ),
    );
  }
}