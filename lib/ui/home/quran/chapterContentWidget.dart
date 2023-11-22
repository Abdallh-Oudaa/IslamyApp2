
import 'package:flutter/material.dart';

class ChapterContentWidget extends StatelessWidget {
  static const String routName="chapterContentWidget";
  const ChapterContentWidget({super.key});
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
     body: Column(children: [
      Text(""),
      Container(
            margin:const EdgeInsets.symmetric(horizontal: 40),
            width: 2,height: 2,color:const Color(0xFFB7935F),),
     
     ],),
    );
  }
}