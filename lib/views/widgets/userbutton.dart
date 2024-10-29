
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: 
    () {

    }, child: Text('SIGN IN',
    style: GoogleFonts.montserrat(),
    ),
    );
  }
}