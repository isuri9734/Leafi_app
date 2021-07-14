import 'package:flutter/material.dart';
import 'package:leafi/classes/Cultivation.dart';
import 'package:leafi/pages/Detector.dart';


class TomatoCultivation extends StatefulWidget {
  @override
  _TomatoCultivationState createState() => _TomatoCultivationState();
}

class _TomatoCultivationState extends State<TomatoCultivation> {
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(  
        home: Scaffold(appBar: AppBar(  
          elevation: 2,
          backgroundColor: Colors.green,
          title: Text('Tomato Cultivation Steps', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
          ),),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          automaticallyImplyLeading: true,
          centerTitle: false,
        ),  body: GridView.count(  
                crossAxisCount: 2,  
                crossAxisSpacing: 4.0,  
                mainAxisSpacing: 10.0,  
                children: List.generate(crops.length, (index) {  
                  return Center(  
                    child: SelectCard(crop: crops[index]),  
                  );  
                }  
                )  
            )  
        )  
    );  
  }  
}  


  
const List<Cultivation> crops = const <Cultivation>[  
  const Cultivation(image:"assets/leaf.png", name: 'Tomato' ),  
  const Cultivation(image:'assets/leaf.png', name: 'Tomato'),  
  const Cultivation(image:'assets/leaf.png' , name: 'Tomato'),  
  const Cultivation(image:'assets/leaf.png', name: 'Tomato'),  
  const Cultivation(image:'assets/leaf.png', name: 'Tomato'),  
  const Cultivation(image:'assets/leaf.png', name: 'Tomato'),  
  const Cultivation(image:'assets/leaf.png', name: 'Tomato'),  
  const Cultivation(image:'assets/leaf.png', name: 'Tomato'),  
];  
  
class SelectCard extends StatelessWidget {  
  const SelectCard({Key key, this.crop}) : super(key: key);  
  final Cultivation crop;  
  
  @override  
  Widget build(BuildContext context) {  
    final TextStyle textStyle = Theme.of(context).textTheme.display1;  
    return Card(  
        color: Colors.white,  
        child: Center(child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: <Widget>[  
              // Expanded(child: Icon( size:50.0, color: textStyle.color)),  
              // Text(crop.name, style: textStyle),  
            ]  
        ),  
        )  
    );  
  }  
}    