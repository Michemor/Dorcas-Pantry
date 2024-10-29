
import 'package:flutter/material.dart';

Widget dorcasLogo ({
  required imageHeight,
  double left = 0,
  double top = 0,
  double right = 0,
  double bottom = 0}) {
  return Container(
    margin: EdgeInsets.fromLTRB(left, top, right, bottom),
    child: Image.asset(
      'assets/images/dorcas_pink.png',
      filterQuality: FilterQuality.high,
      fit: BoxFit.contain,
      height: imageHeight,
    ),
  );
}