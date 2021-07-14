import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafi/classes/Cultivation.dart';
import 'package:leafi/pages/Community/Community.dart';
import 'package:leafi/pages/Cultivation/TomatoCultivation.dart';
import 'package:leafi/pages/Detector.dart';
import 'package:leafi/widgets/DiseaseWidget.dart';
import 'package:leafi/widgets/Search.dart';
import 'package:leafi/widgets/CropList.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = new PageController();
  int currentINdex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentINdex,
        onTap: (index) {
          setState(() {
            currentINdex = index;
            pageController.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.leaf), label: 'Diseases'),
          // BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.tractor), label: 'Cutivation'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.robot), label: 'Detector'),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: 'Community'),
        ],
      ),
      body: SafeArea(
              child: PageView(
          controller: pageController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AppBar(
                    backgroundColor: Color(0xFFFAFAFA),
                    elevation: 0,
                    title: Text(
                      "Leafi",
                      style: TextStyle(
                          color: Color(0xFF1B5E20),
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Amalitha'),
                    ),
                    brightness: Brightness.light,
                  ),
                  Search(),
                  CropList(),
                  DiseaseWidget(),
                ],
              ),
            ),
            // DiseaseWidget(),
            // TomatoCultivation(),
            Detector(),
            Community(),
          ],
        ),
      ),
    );
  }
}
