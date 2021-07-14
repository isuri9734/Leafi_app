import 'package:flutter/material.dart';
import 'package:leafi/classes/CommunityList.dart';
import 'package:leafi/pages/Community/CommunityCard.dart';
import 'package:leafi/pages/Posts.dart';

class Community extends StatefulWidget {

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 2,
          backgroundColor: Colors.green,
          title: Text('Community', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
          ),),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          automaticallyImplyLeading: true,
          centerTitle: false,
        ),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10),

                child: SingleChildScrollView(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: viewDetailPage,
                        child:
                            CommunityCardItem(context, CommunityListPage().communityList[0]),
                      ),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child:
                            CommunityCardItem(context, CommunityListPage().communityList[1]),
                      ),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child: CommunityCardItemQuestion(
                            context, CommunityListPage().communityList[2]),
                      ),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child: CommunityCardImageItem(
                            context, CommunityListPage().communityList[3]),
                      ),

                      SizedBox(height: 20),

                      topSpace(),
                      GestureDetector(
                        onTap: viewDetailPage,
                        child: CommunityCardItem(context, CommunityListPage().communityList[1]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget viewDetailPage() {
    print('Go To Detail Screen');
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => Posts()));
    return null;
  }
}
