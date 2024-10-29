import 'package:dorcas_pantry/configs/colors.dart';
import 'package:dorcas_pantry/controllers/registerControllers.dart';
import 'package:dorcas_pantry/views/widgets/inputtext.dart';
import 'package:dorcas_pantry/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController username= TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController contact = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confirmPass = TextEditingController();

Registercontrollers reg = Registercontrollers();

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: dorcasLogo(imageHeight: 100.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                inputText(control: username, hint: 'Username', userIcon: Icons.person, isPassword: false, left: 20, right: 20, top: 20, bottom: 10),
                inputText(control:  email, hint: 'Email', userIcon: Icons.mail_rounded, isPassword: false, left: 20, right: 20, top: 20, bottom: 5),
                inputText(control: contact, hint: 'Phone Contact', userIcon: Icons.call, isPassword: false, left: 20, top: 20, right: 20, bottom: 10),
                inputText(control: password, hint: 'Password', userIcon: Icons.password, isPassword: true, left: 20, right: 20, top: 10, bottom: 10),
                inputText(control: confirmPass, hint: 'Confirm Password', userIcon: Icons.password, isPassword: true, left: 20, right: 20, top: 10, bottom: 20),
              ]),
              ElevatedButton(onPressed: () {
                reg.checkFields(
                  name: username.text, 
                  email: email.text, 
                  contact: contact.text, 
                  pass1: password.text, 
                  pass2: confirmPass.text);

              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                ),
                elevation: 5,
                backgroundColor: primary,
              ),
               child: Text('SIGN UP',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                )
              ))
              )
          ]),
      ),
    );
  }
}