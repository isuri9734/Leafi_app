import 'package:flutter/material.dart';
import 'package:leafi/pages/Community/Community.dart';
import 'package:leafi/pages/Cultivation/TomatoCultivation.dart';
import 'package:leafi/pages/SelectCrop.dart';
import 'package:leafi/pages/SelectProcess.dart';

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
        child : CropNames(name: "Tomato", imageUrl: "Tomato"),

      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TomatoCultivation()
        ),
      ),
      ),

          GestureDetector (
            child : CropNames(name: "Apple", imageUrl: "Apple"),

            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectCrop()),
            ),
          ),

          GestureDetector (
            child : CropNames(name: "Pepper", imageUrl: "Pepper"),

            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectProcess()),
            ),
          ),

          GestureDetector (
            child : CropNames(name: "Grapes", imageUrl: "Grapes"),

            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectProcess()),
            ),
          ),
        ],
      ),
    );
  }
}

class CropNames extends StatelessWidget {
  String name;
  String imageUrl;
  // String slug;

  CropNames(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      // @required this.slug
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                    'assets/' + imageUrl + ".png",
                    width: 42,
                    height: 42,
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
