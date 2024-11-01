import 'package:dorcas_pantry/configs/colors.dart';
import 'package:flutter/material.dart';


Widget inputText (
  {
    required TextEditingController control,
    String hint = "",
    IconData userIcon = Icons.person,
    bool isPassword = false,
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0}) {
  return Container(
    margin: EdgeInsets.fromLTRB(left, top, right, bottom),
    child: TextField(
      obscureText: isPassword ? true : false,
      controller: control,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w200,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primary,
            width: 10,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        prefixIcon: Icon(userIcon,
        color: secondary,),
        suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade600,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
      cursorColor: Colors.red.shade600,
    ),
  );
}