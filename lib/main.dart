import 'package:apptest/CustomTheme.dart';
import 'package:apptest/ui/home/homeScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( const myApp());
}
class myApp extends StatelessWidget {
   const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     theme:CustomTheme.LightTheme,
     initialRoute:HomeScreen.routName ,
     routes: {
        HomeScreen.routName:(context) => HomeScreen(),
     },
    );
  }
}