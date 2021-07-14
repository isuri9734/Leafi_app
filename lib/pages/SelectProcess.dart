import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leafi/classes/Crop.dart';
import 'package:leafi/classes/Process.dart';

import 'Detector.dart';

class SelectProcess extends StatefulWidget {
  @override
  _SelectProcessState createState() => _SelectProcessState();
}

class _SelectProcessState extends State<SelectProcess> {

  final List<Process> listItem = [
    Process(image: 'assets/Tomato.png',name: 'Diseases'),
    Process(image: 'assets/Apple.png',name: 'Fertilizers'),
    Process(image: 'assets/Pepper.png',name: 'Cultivation'),
    Process(image: 'assets/Grapes.png',name: 'Detector'),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("Select what you want to know"),
        

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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(32), 
                    child: ClipOval(
                      child: Image.asset(
                    listItem[index].image,
                    height: 100.0,
                    width: 100.0,
                    alignment: Alignment.bottomCenter,
                    ),
                    ),
                      
                ),
              ],
            ),
            
          );

        })
    );
  }
}

