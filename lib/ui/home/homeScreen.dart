import 'package:apptest/ui/home/Sebha/Sebha.dart';
import 'package:apptest/ui/home/hades/Hades.dart';
import 'package:apptest/ui/home/quran/quran.dart';
import 'package:apptest/ui/home/radio/Radio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routName = "homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main-image.png"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          //backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Center(child: Text("Islamy")),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedItem,
            onTap: (index) {
              setState(() {
                selectedItem = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage("assets/images/moshaf_gold.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                  label: "Hades"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage("assets/images/sebha_blue.png")),
                  label: "Sebh"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage("assets/images/radio_blue.png")),
                  label: "Radio"),
            ],
          ),
          body: taps[selectedItem],
        ),
      ),
    );
  }

  List<Widget> taps = [
    const QuranTap(),
    const HadesTap(),
    const SebhaTap(),
    const RadioTap(),
  ];
}
