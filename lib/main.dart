
import 'package:apptest/homeScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     initialRoute:home_screen.routName ,
     routes: {
        home_screen.routName:(context) => home_screen(),
     },
    );
  }
}