import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/pages/BacterialSpot.dart';
import 'package:flutter_app/pages/EarlyBlight.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/pages/SignUpPage.dart';
import 'package:flutter_app/pages/SpotLight.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

  int _currentIndex =0;
  final List<Widget>_children = [
      HomePage(),
      BacterialSpot(),
      EarlyBlight(),
      SignInPage(),
      SignUpPage(),
      SpotLight()
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar
       (
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
                    BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text(
                    'Home',
                    style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 12,
                    ),
                    ),
                    ),
                    BottomNavigationBarItem(
                    icon: Icon(Icons.near_me),
                    title: Text(
                    'Diseases',
                    style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 12,
                    ),
                    ),
                    ),
                    BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard),
                    title: Text(
                    'Fertilizers',
                    style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 12,
                    ),
                    ),
                    ),
                    BottomNavigationBarItem(
                    icon: Icon(Icons.near_me),
                    title: Text(
                    'Cultivation',
                    style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 12,
                    ),
                    ),
                    ),
                    BottomNavigationBarItem(
                    icon: Icon(Icons.near_me),
                    title: Text(
                    'Detector',
                    style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 12,
                    ),
                    ),
                    ),
                    BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.user),
                    title: Text(
                    'Chat',
                    style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 12,
                    ),
                    ),
              ),
            ],
          ),
    // currentIndex: _selectedIndex,
    // selectedItemColor: Color(0xFFfd5352),
    // onTap: _onItemTapped,
    );
  }
}


























// class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
//
//   int _currentIndex =0;
//   final List<Widget>_children = [
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // int _selectedIndex = 0;
// //     void _onItemTapped(int index) {
// //       setState(() {
// //         _selectedIndex = index;
// // //        navigateToScreens(index);
// //       });
// //     }
//     return BottomNavigationBar(
//     type: BottomNavigationBarType.fixed,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           title: Text(
//             'Home',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//                 fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.near_me),
//           title: Text(
//             'Diseases',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.card_giftcard),
//           title: Text(
//             'Fertilizers',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.near_me),
//           title: Text(
//             'Cultivation',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.near_me),
//           title: Text(
//             'Detector',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(FontAwesomeIcons.user),
//           title: Text(
//             'Chat',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ],
//       // currentIndex: _selectedIndex,
//       // selectedItemColor: Color(0xFFfd5352),
//       // onTap: _onItemTapped,
//     );
//   }
// }
