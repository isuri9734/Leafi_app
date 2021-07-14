// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:leafi/pages/BacterialSpot.dart';
// import 'package:leafi/pages/Detector.dart';
// import 'package:leafi/pages/HomePage.dart';
// import 'package:leafi/pages/TomatoCultivation.dart';
// import 'package:leafi/widgets/BottomBar.dart';
// import 'package:leafi/classes/BottomBarItem.dart';

// class BottomNavPageBar extends StatefulWidget {
//   @override
//   _BottomNavBarPageState createState() => new _BottomNavBarPageState();
// }
// // with TickerProviderStateMixin
// class _BottomNavBarPageState extends State<BottomNavPageBar>  {
//   int _selectedDrawerIndex = 0;

//   _selectedTab(int pos) {
//     setState(() {
//       _onSelectItem(pos);
//     });

//     switch (pos) {
//       case 0:
//         return HomePage();
//       case 1:
//         return DiseaseDetails();
//       case 2:
//         return FertilizerDetails();
//       case 3:
//         return TomatoCultivation();
//       case 4:
//         return Detector();
//       case 5:
//         return Detector();
//       default:
//         return Text("Invalid screen requested");
//     }
//   }

//   _onSelectItem(int index) {
//     setState(() => _selectedDrawerIndex = index);
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: _selectedTab(_selectedDrawerIndex),
//       bottomNavigationBar: BottomBar(
//         color: Colors.grey[700],
//         selectedColor: Theme.of(context).accentColor,
//         notchedShape: CircularNotchedRectangle(),
//         iconSize: 20.0,
//         onTabSelected: _selectedTab,
//         items: [
//           BottomBarItem(iconData: FontAwesomeIcons.home, text: 'Home'),
//           BottomBarItem(iconData: FontAwesomeIcons.leaf, text: 'Diseases'),
//           BottomBarItem(iconData: FontAwesomeIcons.flask, text: 'Fertilizer'),
//           BottomBarItem(iconData: FontAwesomeIcons.tractor, text: 'cultivation'),
//           BottomBarItem(iconData: FontAwesomeIcons.robot, text: 'Detector'),
//           BottomBarItem(iconData: FontAwesomeIcons.question, text: 'Chat'),
//         ],
//       ),
//     );
//   }
// }
