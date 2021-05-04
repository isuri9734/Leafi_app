import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/widgets/DiseaseWidget.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/SearchWidget.dart';
import 'package:flutter_app/widgets/CropList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        // actions: <Widget>[
        //   // IconButton(
        //   //     icon: Icon(
        //   //       Icons.notifications_none,
        //   //       color: Color(0xFF3a3737),
        //   //     ),
        //       onPressed: () {Navigator.push(context, ScaleRoute(page: SignInPage()));})
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            CropList(),
            DiseaseWidget(),
            // BottomNavBarWidget(),
          ],
        ),
      ),
       //
       bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
