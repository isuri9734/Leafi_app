// import 'package:flutter/material.dart';
// import 'package:leafi/pages/Detector.dart';
// import 'package:leafi/pages/HomePage.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:leafi/pages/BacterialSpot.dart';
// import 'package:leafi/pages/EarlyBlight.dart';
// import 'package:leafi/pages/SignInPage.dart';
// import 'package:leafi/pages/SignUpPage.dart';
// import 'package:leafi/pages/SpotLight.dart';

// class BottomNavBarWidget extends StatefulWidget {
//   @override
//   _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
// }

// class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

//   int _currentIndex =0;
//   final List<Widget>_children = [

//   ];

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//     type: BottomNavigationBarType.fixed,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home,
//             color: Colors.grey,
//           ),
//           title: Text(
//             'Home',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//                 fontSize: 11,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(FontAwesomeIcons.leaf,
//             color: Colors.grey,),
//           title: Text(
//             'Diseases',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b,),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(FontAwesomeIcons.flask,
//             color: Colors.grey,),
//           title: Text(
//             'Fertilizers',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(FontAwesomeIcons.tractor,
//             color: Colors.grey,),
//           title: Text(
//             'Cultivation',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(FontAwesomeIcons.robot,
//             color: Colors.grey,),
//           title: Text(
//             'Detector',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//               Icons.question_answer,
//             color: Colors.grey,
//           ),
//           title: Text(
//             'Chat',
//             style: TextStyle(
//                 color: Color(0xFF2c2b2b),
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
