import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomBottun extends StatelessWidget {
  const CustomBottun({super.key, this.onTap,  this.isLoading =false});
 final void Function()? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child:  Center(
          child: isLoading ? const SizedBox(width: 24,height: 24,
            child:  CircularProgressIndicator(color: Colors.black,
            ),
          )
              :  const Text(
            "Add",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20  ),
          ),
        ),
      ),
    );
  }
}