import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';

class EarlyBlight extends StatefulWidget {
  @override
  _EarlyBlightState createState() => _EarlyBlightState();
}

class _EarlyBlightState extends State<EarlyBlight> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            // IconButton(
            //     icon: Icon(
            //       Icons.business_center,
            //       color: Color(0xFF3a3737),
            //     ),
            //     onPressed: () {
            //       Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
            //     })
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                // title: Text('GeeksforGeeks'), //Text
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/bestfood/ic_best_food_8.jpeg'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 1,
                margin: EdgeInsets.all(2),
              ),


              // FoodTitleWidget(
              //     productName: "Grilled Salmon",
              //     productPrice: "\$96.00",
              //     productHost: "pizza hut"),
              // SizedBox(
              //   height: 15,
              // ),
              // AddToCartMenu(),
              // SizedBox(
              //   height: 15,
              // ),
              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Color(0xFFfd3f40),
                  indicatorColor: Color(0xFFfd3f40),
                  unselectedLabelColor: Color(0xFFa4a1a1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(
                      text: 'Food Details',
                    ),
                    Tab(
                      text: 'Food Reviews',
                    ),
                  ], // list of tabs
                ),
              ),
              Container(
                height: 150,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                      child: DiseaseDetails(),
                    ),
                    Container(
                      color: Colors.white24,
                      child: FertilizerDetails(),
                    ), // class name
                  ],
                ),
              ),
              BottomNavBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

// class FoodTitleWidget extends StatelessWidget {
//   String productName;
//   String productPrice;
//   String productHost;
//
//   FoodTitleWidget({
//     Key key,
//     @required this.productName,
//     @required this.productPrice,
//     @required this.productHost,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Text(
//               productName,
//               style: TextStyle(
//                   fontSize: 20,
//                   color: Color(0xFF3a3a3b),
//                   fontWeight: FontWeight.w500),
//             ),
//             Text(
//               productPrice,
//               style: TextStyle(
//                   fontSize: 20,
//                   color: Color(0xFF3a3a3b),
//                   fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Row(
//           children: <Widget>[
//             Text(
//               "by ",
//               style: TextStyle(
//                   fontSize: 16,
//                   color: Color(0xFFa9a9a9),
//                   fontWeight: FontWeight.w400),
//             ),
//             Text(
//               productHost,
//               style: TextStyle(
//                   fontSize: 16,
//                   color: Color(0xFF1f1f1f),
//                   fontWeight: FontWeight.w400),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Icon(
                  Icons.home,
                  color: Color(0xFF404aff),
                  size: 35,
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Text(
                "Home",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFa9a9a9),
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Icon(
                  Icons.directions,
                  color: Color(0xFF23c58a),
                  size: 35,
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Text(
                  "Diseases",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFa9a9a9),
                      fontWeight: FontWeight.w400),
                ),
              )
            ],

          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Icon(
                  Icons.map,
                  color: Color(0xFFff0654),
                  size: 35,
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Text(
                  "Fertilizers",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFa9a9a9),
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Icon(
                  Icons.map,
                  color: Color(0xFFff0654),
                  size: 35,
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Text(
                  "Cultivation",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFa9a9a9),
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Icon(
                  Icons.directions_bike,
                  color: Color(0xFFe95959),
                  size: 35,
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Text(
                  "Disease",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFa9a9a9),
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class AddToCartMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.remove),
//             color: Colors.black,
//             iconSize: 30,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
//             },
//             child: Container(
//               width: 200.0,
//               height: 45.0,
//               decoration: new BoxDecoration(
//                 color: Color(0xFFfd2c2c),
//                 border: Border.all(color: Colors.white, width: 2.0),
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Center(
//                 child: Text(
//                   'Add To Bag',
//                   style: new TextStyle(
//                       fontSize: 18.0,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400),
//                 ),
//               ),
//             ),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.add),
//             color: Color(0xFFfd2c2c),
//             iconSize: 30,
//           ),
//         ],
//       ),
//     );
//   }
// }

class DiseaseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 5, right: 5),
      child: Text(
        'earlyyyyyyy'
        'Lorem ipsum, or lipsum as it is sometimes known'
            ' is dummy text used in laying out print'
            'graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who '
            'is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.'
            'Lorem ipsum, or lipsum as it is sometimes known,'
            ' is dummy text used in laying out print, '
            'graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class FertilizerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 5, right: 5),
      child: Text(
        'Fertilizer',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
