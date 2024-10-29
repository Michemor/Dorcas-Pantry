
import 'package:dorcas_pantry/configs/colors.dart';
import 'package:dorcas_pantry/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
          alignment: AlignmentDirectional(0, 4),
          child: dorcasLogo(imageHeight: 60.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.black,),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.black,),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.black,
            ),
            label: 'Home'
          )
        ],
        backgroundColor: secondary,
        elevation: 3.0,
        ),
    );
  }
}