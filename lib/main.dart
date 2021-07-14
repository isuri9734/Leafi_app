import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leafi/pages/Detector.dart';
import 'package:leafi/pages/HomePage.dart';
import 'package:leafi/LoadingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Leafi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoadingPage(),
      routes: {
        LoadingPage.id:(context) => LoadingPage(),
        HomePage.id:(context) => HomePage(),
        Detector.id:(context)=> Detector(),

      },
    );
  }
}
