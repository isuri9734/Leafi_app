import 'package:flutter/material.dart';
import 'package:flutter_app/pages/BacterialSpot.dart';

class CropList extends StatefulWidget {
  @override
  _CropListState createState() => _CropListState();
}

class _CropListState extends State<CropList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
      GestureDetector (
        child : CropTiles(name: "Tomato", imageUrl: "ic_burger"),

      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BacterialSpot()),
      ),
      ),

          GestureDetector (
            child : CropTiles(name: "Apple", imageUrl: "ic_sushi"),

            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacterialSpot()),
            ),
          ),

          GestureDetector (
            child : CropTiles(name: "Pepper", imageUrl: "ic_pizza"),

            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacterialSpot()),
            ),
          ),

          GestureDetector (
            child : CropTiles(name: "Ice Cream", imageUrl: "ic_ice_cream"),

            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BacterialSpot()),
            ),
          ),

          // ,slug: "it is a aple"
          // CropTiles(name: "Apple", imageUrl: "ic_sushi"),
          // CropTiles(name: "Pepper", imageUrl: "ic_pizza"),
          // CropTiles(name: "Brinjal", imageUrl: "ic_cake",),
          // CropTiles(name: "Ice Cream", imageUrl: "ic_ice_cream",),
          // CropTiles(name: "Pepper", imageUrl: "ic_ice_cream",),
          // TopMenuTiles(name: "Soft Drink", imageUrl: "ic_soft_drink", slug: ""),
          // TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: ""),
          // TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: ""),
        ],
      ),
    );
  }
}

class CropTiles extends StatelessWidget {
  String name;
  String imageUrl;
  // String slug;

  CropTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      // @required this.slug
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFA5D6A7),
                blurRadius: 15.0,
                offset: Offset(0.0, 0.70),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/images/topmenu/' + imageUrl + ".png",
                    width: 24,
                    height: 24,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Color(0xFF33691E),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
