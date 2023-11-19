import 'package:apptest/classData.dart';
import 'package:apptest/itemWidget.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  List<category> categoryList = [];
  home_screen() {
    data();
  }
  void data() {
    for (int i = 0; i < 100; i++) {
      categoryList.add(category(title: "title ${i}", path: "assets/code.jpg"));
    }
  }

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
        body: Container(
          padding: EdgeInsets.all(4),
          child: GridView.builder(
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2
                  ),
              itemBuilder: (context, index) => item_widget(
                    title: categoryList[index].title,
                    path:categoryList[index].path,
                  ),itemCount: categoryList.length,),
        ),
      ),
    );
  }
}
