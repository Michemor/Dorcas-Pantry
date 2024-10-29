import 'package:dorcas_pantry/configs/colors.dart';
import 'package:dorcas_pantry/controllers/loginController.dart';
import 'package:dorcas_pantry/views/screens/register.dart';
import 'package:dorcas_pantry/views/widgets/inputtext.dart';
import 'package:dorcas_pantry/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
Logincontroller usercontroller = (Logincontroller());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: dorcasLogo(imageHeight: 100.0)),
            Container(
                margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Column(
                  children: [
                    inputText(
                        control: username, hint: 'Username', userIcon: Icons.person_4_outlined, isPassword: false),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: inputText(
                            control: password,
                            hint: 'Password',
                            userIcon: Icons.lock_outline,
                            isPassword: true)),
                  ],),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(onPressed: () {
                    usercontroller.verifyUser(username: username.text, password: password.text);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: primary,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                  child: Text('SIGN IN',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  ),
                ), 
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('No account yet!',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                      )
                    ),),
                    GestureDetector(child: Text('Register',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: primary,
                        fontWeight: FontWeight.w700,
                      )
                    ),
                    ),
                    onTap: () {
                      Get.to(() => Register());
                    },)
                  ],),
                )
          ],
        ),
      ),
    )
    );
  }
}
