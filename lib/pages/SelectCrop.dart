import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leafi/classes/Crop.dart';


class SelectCrop extends StatefulWidget {
  @override
  _SelectCropState createState() => _SelectCropState();
}

class _SelectCropState extends State<SelectCrop> {

  final List<Crop> listItem = [
    Crop(image: 'assets/Tomato.png',name: 'Tomato'),
    Crop(image: 'assets/Apple.png',name: 'Apple'),
    Crop(image: 'assets/Pepper.png',name: 'Pepper'),
    Crop(image: 'assets/Grapes.png',name: 'Grapes'),
    Crop(image: 'assets/Pepper.png',name: 'Pepper'),
    Crop(image: 'assets/Grapes.png',name: 'Grapes'),
    Crop(image: 'assets/Pepper.png',name: 'Pepper'),
    Crop(image: 'assets/Grapes.png',name: 'Grapes'),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("Select a crop"),

      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20
                ),
                itemCount: listItem.length,
        itemBuilder: (context,index){
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(512)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(32), 
                    child: Image.asset(
                    listItem[index].image,
                    height: 100.0,
                    width: 100.0,
                    alignment: Alignment.bottomCenter,
                    ),
                     
                ),
              ],
            ),
          );

        })
    );
  }
}
