import 'package:flutter/material.dart';
import 'package:get/get.dart';


customDialog ({required text, required message}) {
  return Get.defaultDialog(
    title: text,
    content: Text(message),
    // what do you need confirmed
    // use onConfirm
  );
}