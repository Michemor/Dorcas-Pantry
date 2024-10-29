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
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        prefixIcon: Icon(userIcon,
        color: Colors.grey,),
        suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade600,
          ),
        ),
      ),
      cursorColor: Colors.red.shade600,
    ),
  );
}