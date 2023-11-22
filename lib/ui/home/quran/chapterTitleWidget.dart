import 'package:apptest/ui/home/quran/chapterContentWidget.dart';
import 'package:flutter/material.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;
   ChapterTitleWidget(this.title,this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(ChapterContentWidget.routName);
      },
      child: Container(
      //margin: EdgeInsets.symmetric(horizontal: 50,vertical: 2),
        alignment: Alignment.center,
        child: Text(title,style:const TextStyle(fontSize: 25,fontWeight:FontWeight.w400),)),
    );
  }
}