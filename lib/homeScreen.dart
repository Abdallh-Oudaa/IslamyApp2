import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  static String routName = "homeScreen";
  home_screen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "practice",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
