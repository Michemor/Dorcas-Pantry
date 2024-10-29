
import 'package:dorcas_pantry/configs/colors.dart';
import 'package:dorcas_pantry/views/screens/dashboard.dart';
import 'package:dorcas_pantry/views/screens/login.dart';
import 'package:dorcas_pantry/views/screens/register.dart';
import 'package:dorcas_pantry/views/widgets/alert.dart';
import 'package:dorcas_pantry/views/widgets/customSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logincontroller extends GetxController{
  var username = ''.obs;
  var password = ''.obs;

  checkFields ({name, pass, isPass}){
    if(name && pass){
      verifyUser(
        username: name, 
        password: pass, 
        isPass: isPass);
    }
  }

  // checks the user before login
  verifyUser ({username = '', password = '', isPass = false}) {
    var defaultPassword = 'user';
      if (defaultPassword == password) {
        customSnackBar(
          title: 'Successful', 
          message:'Welcome to Dorcas Pantry');
        Get.to(Dashboard());
         } 
        else {
          Get.snackbar('Error in login', 
          'Kindly enter the correct password',
           snackPosition: SnackPosition.TOP,
         colorText: primary,
        backgroundColor: Colors.white,
        animationDuration: Duration(seconds: 5));
        }
    }
  }
