import 'package:flutter/material.dart';

class BacterialSpot extends StatefulWidget {
  @override
  _BacterialSpotState createState() => _BacterialSpotState();
}

class _BacterialSpotState extends State<BacterialSpot> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Bacterial Spot", style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
          ),),
          backgroundColor: Colors.white,
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
               
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/tomato_bacterial_spot.jpeg'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 1,
                margin: EdgeInsets.all(2),
              ),


              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Color(0xFF1A5B20),
                  indicatorColor: Color(0xFF1A5B20),
                  unselectedLabelColor: Color(0xFF81c784),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(
                      text: 'Disease Details',
                    ),
                    Tab(
                      text: 'Suitable Fertilizer',
                    ),
                  ], 
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
                    ), 
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class DiseaseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
        left: 5, right: 5),
      child: Text(
        'bacteriaaaa'
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
