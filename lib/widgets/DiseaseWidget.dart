import 'package:flutter/material.dart';
import 'package:flutter_app/pages/BacterialSpot.dart';
import 'package:flutter_app/pages/SpotLight.dart';
import 'package:flutter_app/pages/EarlyBlight.dart';
import 'package:flutter_app/pages/FungiSpot.dart';

class DiseaseWidget extends StatefulWidget {
  @override
  _DiseaseWidgetState createState() => _DiseaseWidgetState();
}

class _DiseaseWidgetState extends State<DiseaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          // BestFoodTitle(),
          Expanded(
            child: DiseaseList(),
          )
        ],
      ),
    );
  }
}

// class BestFoodTitle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text(
//             "Diseases",
//             style: TextStyle(
//                 fontSize: 20,
//                 color: Color(0xFF3a3a3b),
//                 fontWeight: FontWeight.w300),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BestFoodTiles extends StatelessWidget {
//   String dname;
//   String imageUrl;
//   String crop;
//   String description;
//   String fertilizer;
//   String sansw;
//
//   BestFoodTiles(
//       {Key key,
//       @required this.dname,
//       @required this.imageUrl,
//       @required this.crop,
//       @required this.description,
//       @required this.fertilizer,
//       @required this.sansw})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
//       },
//       child: Column(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
//             decoration: BoxDecoration(boxShadow: [
//               /* BoxShadow(
//                 color: Color(0xFFfae3e2),
//                 blurRadius: 15.0,
//                 offset: Offset(0, 0.75),
//               ),*/
//             ]),
//             child: Card(
//               semanticContainer: true,
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               child: Image.asset(
//                 'assets/images/bestfood/' + imageUrl + ".jpeg",
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               elevation: 1,
//               margin: EdgeInsets.all(5),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
  class DiseaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return ListView(
    padding: EdgeInsets.all(16.0),
  // body: ListView(
  children: [
    GestureDetector (
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
      ),
        clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
                Image.asset('assets/images/bestfood/ic_best_food_7.jpeg'),
                  ListTile(
                    title: const Text('Tomato fungi',
                      style: TextStyle(
                            color: Color(0xFF2E7D32),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    // subtitle: Text(
                    //   'Secondary Text',
                    //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    // ),
                    ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
            child: Text(
              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            ),

      ],
      ),
      ),

        onTap: () => Navigator.push(
          context,
            MaterialPageRoute(builder: (context) => FungiSpot()),
    )

  ),

    GestureDetector (
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset('assets/images/bestfood/ic_best_food_8.jpeg'),
              ListTile(
                title: const Text('tomato early blight',
                    style: TextStyle(
                    color: Color(0xFF2E7D32),
                    fontSize: 18,
                    fontWeight: FontWeight.w500)
                ),
                // subtitle: Text(
                //   'Secondary Text',
                //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
                child: Text(
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),

            ],
          ),
        ),

        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EarlyBlight()),
        )

    ),

    GestureDetector (
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset('assets/images/bestfood/ic_best_food_9.jpeg'),
              ListTile(
                title: const Text('tomato spot light',
                    style: TextStyle(
                        color: Color(0xFF2E7D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)
                ),
                // subtitle: Text(
                //   'Secondary Text',
                //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
                child: Text(
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),

            ],
          ),
        ),

        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SpotLight()),
        )

    ),

    GestureDetector (
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset('assets/images/bestfood/ic_best_food_10.jpeg'),
              ListTile(
                title: const Text('tomato Bacterial spot',
                    style: TextStyle(
                        color: Color(0xFF2E7D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)
                ),
                // subtitle: Text(
                //   'Secondary Text',
                //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
                child: Text(
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ],
          ),
        ),

        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BacterialSpot()),
            )
          ),
        ],
      );
    }
  }
    // Card(
    //
    // shape: RoundedRectangleBorder(
    // borderRadius: BorderRadius.circular(15.0),
    // ),
    // clipBehavior: Clip.antiAlias,
    // child: Column(
    // children: [
    // Image.asset('assets/images/bestfood/ic_best_food_8.jpeg'),
    // ListTile(
    // title: const Text('tomato spot light'),
    // // subtitle: Text(
    // //   'Secondary Text',
    // //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
    // // ),
    // ),
    // Padding(
    // padding: const EdgeInsets.all(10.0),
    // child: Text(
    // 'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
    // style: TextStyle(color: Colors.black.withOpacity(0.6)),
    // ),
    // ),
    //
    // ],
    // ),
    // ),

    // Card(
    //
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15.0),
    //   ),
    //   clipBehavior: Clip.antiAlias,
    //   child: Column(
    //     children: [
    //       Image.asset('assets/images/bestfood/ic_best_food_8.jpeg'),
    //       ListTile(
    //         title: const Text('tomato spot light'),
    //         // subtitle: Text(
    //         //   'Secondary Text',
    //         //   style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //         // ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(10.0),
    //         child: Text(
    //           'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
    //           style: TextStyle(color: Colors.black.withOpacity(0.6)),
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // ),
  // ],
  //   // ),
  // );
  // }
  // }

// class BestFoodList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         BestFoodTiles(
//             dname: "tomato spot light",
//             imageUrl: "ic_best_food_8",
//             crop: 'Tomato',
//             description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
//             sansw: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
//             fertilizer: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
//         BestFoodTiles(
//             dname: "tomato early light",
//             imageUrl: "ic_best_food_9",
//             crop: "Tomato.9",
//             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
//             sansw: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
//             fertilizer: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
//         BestFoodTiles(
//             dname: "tomato bacterial",
//             imageUrl: "ic_best_food_10",
//             crop: "Tomato.0",
//             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
//             sansw: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
//             fertilizer: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
//         BestFoodTiles(
//             dname: "tomato bacterial",
//                     imageUrl: "ic_best_food_10",
//                     crop: "Tomato.0",
//                     description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
//                     sansw: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
//                     fertilizer: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
//         // BestFoodTiles(
//         //     name: "Red meat with salad",
//         //     imageUrl: "ic_best_food_1",
//         //     rating: "4.6",
//         //     numberOfRating: "150",
//         //     price: "12.00",
//         //     slug: ""),
//         // BestFoodTiles(
//         //     name: "New mixed salad",
//         //     imageUrl: "ic_best_food_2",
//         //     rating: "4.00",
//         //     numberOfRating: "100",
//         //     price: "11.10",
//         //     slug: ""),
//         // BestFoodTiles(
//         //     name: "Potato with meat fry",
//         //     imageUrl: "ic_best_food_3",
//         //     rating: "4.2",
//         //     numberOfRating: "70",
//         //     price: "23.0",
//         //     slug: ""),
//         // BestFoodTiles(
//         //     name: "Fried Egg",
//         //     imageUrl: "ic_best_food_4",
//         //     rating: '4.9',
//         //     numberOfRating: '200',
//         //     price: '15.06',
//         //     slug: "fried_egg"),
//         // BestFoodTiles(
//         //     name: "Red meat with salad",
//         //     imageUrl: "ic_best_food_5",
//         //     rating: "4.6",
//         //     numberOfRating: "150",
//         //     price: "12.00",
//         //     slug: ""),
//         // BestFoodTiles(
//         //     name: "Red meat with salad",
//         //     imageUrl: "ic_best_food_6",
//         //     rating: "4.6",
//         //     numberOfRating: "150",
//         //     price: "12.00",
//         //     slug: ""),
//         // BestFoodTiles(
//         //     name: "Red meat with salad",
//         //     imageUrl: "ic_best_food_7",
//         //     rating: "4.6",
//         //     numberOfRating: "150",
//         //     price: "12.00",
//         //     slug: ""),
//       ],
//     );
//   }
// }
