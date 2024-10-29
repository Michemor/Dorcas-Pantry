import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _curr_index = 0;

  // create a list for the screens

  void onTabSelected(int index) {
    setState(() {
      _curr_index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}