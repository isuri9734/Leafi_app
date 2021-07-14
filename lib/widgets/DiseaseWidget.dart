import 'package:flutter/material.dart';
import 'package:leafi/pages/Diseases/BacterialSpot.dart';
import 'package:leafi/pages/Diseases/EarlyBlight.dart';
import 'package:leafi/pages/Diseases/FungiSpot.dart';
import 'package:leafi/pages/Diseases/SpotLight.dart';

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
          Expanded(
            child: DiseaseList(),
          )
        ],
      ),
    );
  }
}

  class DiseaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return ListView(
    padding: EdgeInsets.all(16.0),
  children: [
    GestureDetector (
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
      ),
        clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
                Image.asset('assets/tomato_late_blight.jpeg'),
                  ListTile(
                    title: const Text('Tomato late blight',
                      style: TextStyle(
                            color: Color(0xFF2E7D32),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    
                    ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
            child: Text(
              'Late blight is a potentially devastating disease of tomato and potato, infecting leaves, '
                  'stems and fruits of tomato plants.',
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
              Image.asset('assets/tomato_early_blight.jpeg'),
              ListTile(
                title: const Text('tomato early blight',
                    style: TextStyle(
                    color: Color(0xFF2E7D32),
                    fontSize: 18,
                    fontWeight: FontWeight.w500)
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
                child: Text(
                  'early blight is a potentially devastating disease of tomato and potato, infecting leaves, '
                      'stems and fruits of tomato plants. The disease spreads quickly in fields and can '
                      'result in total crop failure if untreated..',
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
              Image.asset('assets/tomato_leaf_mold.jpeg'),
              ListTile(
                title: const Text('tomato spot light',
                    style: TextStyle(
                        color: Color(0xFF2E7D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
                child: Text(
                  'Late blight is a potentially devastating disease of tomato and potato, infecting leaves, '
                      'stems and fruits of tomato plants. The disease spreads quickly in fields and can '
                      'result in total crop failure if untreated.',
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
              Image.asset('assets/tomato_bacterial_spot.jpeg'),
              ListTile(
                title: const Text('Tomato Bacterial spot',
                    style: TextStyle(
                        color: Color(0xFF2E7D32),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
                child: Text(
                  'Bacterial spot is a potentially devastating disease of tomato and potato, infecting leaves, '
                      'stems and fruits of tomato plants. The disease spreads quickly in fields and can '
                      'result in total crop failure if untreated.',
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
    