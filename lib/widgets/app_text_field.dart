// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppTextField extends StatelessWidget {
  //final TextEditingController textEditingController;
  final String hintText;
  bool isObscure;
  final IconData icon;
  AppTextField({
    Key? key,
   // required this.textEditingController,
    required this.hintText,
    this.isObscure = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 3,
            offset: const Offset(1, 1),
            color: Colors.grey.withOpacity(0.2),
          )
        ],
      ),
      child: TextField(
        obscureText: isObscure ? true : false,
        //controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            icon,
            color: AppColors.greenColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 1.0, color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 1.0, color: Colors.white70),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
