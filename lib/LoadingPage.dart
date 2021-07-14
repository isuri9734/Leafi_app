import 'dart:async';

import 'package:flutter/material.dart';
import 'package:leafi/pages/HomePage.dart';

class LoadingPage extends StatefulWidget {
  static const String id = 'loadingPage';

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  navigateToLandingPage() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, nextPage);
  }

  void nextPage() {
    Navigator.pushNamedAndRemoveUntil(context, HomePage.id, (route) => false);
  }

  @override
  void initState() {
    super.initState();
    navigateToLandingPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Image.asset(
          'assets/leaf.png',
          width: 75,
          height: 75,
        ),
        Text(
          'Leafi',
          style: TextStyle(
              fontFamily: 'Amalitha',
              fontSize: 52,
              fontWeight: FontWeight.w600,
              color: Colors.green),
        )
          ],
        ),
      ),
    );
  }
}
