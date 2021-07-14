import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafi/classes/CommunityC.dart';
import 'package:leafi/classes/CommunityList.dart';
import 'package:leafi/widgets/CDetails.dart';


BoxDecoration boxDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      border:
          Border.all(width: 1, style: BorderStyle.solid, color: Colors.teal));
}

BoxDecoration selectedBoxDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      color: Colors.teal[200],
      border:
          Border.all(width: 1, style: BorderStyle.solid, color: Colors.teal));
}

Widget topSpace() {
  return SizedBox(height: 10);
}

Widget CommunityCardItem(BuildContext context, CommunityC communityList) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(style: BorderStyle.solid, color: Colors.grey, width: 0.5)
    ),
    child: Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            renderCategoryTime(communityList),
            space10(),
            userAvatarSection(context, communityList),
            space15(),
            Visibility(
                visible: communityList.name.isEmpty == true ? false : true,
                child: Text(communityList.name,
                    softWrap: true,
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            space15(),
            Visibility(
                visible: communityList.description.isEmpty == true ? false : true,
                child: Text(communityList.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey))),
            space15(),
            setLocation(communityList),
            Divider(thickness: 1),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.addressBook),
                SizedBox(width: 10),
                Text(
                  '${communityList.members} Members have this questions',
                  style: TextStyle(
                      fontSize: 14, color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            Divider(thickness: 1),
            SizedBox(height: 10),
            likeCommentShare(communityList),
            space15(),
          ],
        ),
      ),
    ),
  );
}

Widget CommunityCardItemQuestion(BuildContext context, CommunityC communityList) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(style: BorderStyle.solid, color: Colors.grey, width: 0.5)
    ),
    child: Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            renderCategoryTime(communityList),
            space10(),
            userAvatarSection(context, communityList),
            space15(),
            Visibility(
                visible: communityList.name.isEmpty == true ? false : true,
                child: Text(communityList.name,
                    softWrap: true,
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            space15(),
            setLocation(communityList),
            space15(),
            questionPallet(),
            space15(),
            Divider(thickness: 1),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.addressBook),
                SizedBox(width: 10),
                Text(
                  '${communityList.members} Members have this questions',
                  style: TextStyle(
                      fontSize: 14, color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            Divider(thickness: 1),
            SizedBox(height: 10),
            likeCommentShare(communityList),
            space15(),
          ],
        ),
      ),
    ),
  );
}

Widget CommunityCardImageItem(BuildContext context,CommunityC communityList) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(style: BorderStyle.solid, color: Colors.grey, width: 0.5)
    ),
    child: Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            renderCategoryTime(communityList),
            space10(),
            userAvatarSection(context, communityList),
            space15(),
            Text(communityList.name,
                softWrap: true,
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            space15(),
            Text(communityList.description,
                style: TextStyle(fontSize: 14, color: Colors.blue)),
            space15(),
            // show Image Preview

            Image.asset('assets/tomato_bacterial_spot.jpeg', fit: BoxFit.cover, height: 180, width: double.infinity),

            space15(),
            // shows location
            setLocation(communityList),
            Divider(thickness: 1),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.addressBook),
                SizedBox(width: 10),
                Text(
                  '${communityList.members} Members have this questions',
                  style: TextStyle(
                      fontSize: 14, color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            Divider(thickness: 1),
            SizedBox(height: 10),
            likeCommentShare(communityList),
            space15(),
          ],
        ),
      ),
    ),
  );
}

Widget btnDecoration(String btnText) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.teal,
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 12, color: Colors.grey[100]),
      ));
}

Widget questionPallet() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    height: 100,
    decoration: BoxDecoration(color: Colors.teal[100]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Are you going?', style: TextStyle(fontSize: 18)),
            Row(
              children: <Widget>[
                Icon(Icons.people),
                SizedBox(
                  width: 4,
                ),
                Text('21 People going?', style: TextStyle(fontSize: 12))
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            btnDecoration('No'),
            SizedBox(width: 20),
            btnDecoration('Yes')
          ],
        )
      ],
    ),
  );
}

Widget pollingCard(BuildContext context,CommunityC communityList) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(style: BorderStyle.solid, color: Colors.grey, width: 0.5)
    ),
    child: Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            renderCategoryTime(communityList),
            space10(),
            userAvatarSection(context, communityList),
            space15(),
            Visibility(
                visible: communityList.name.isEmpty == true ? false : true,
                child: Text(communityList.name,
                    softWrap: true,
                    maxLines: 2,
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            space15(),
            pollCartSection(),
            space15(),
            setLocation(communityList),
            Divider(thickness: 1),
            Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.addressBook),
                SizedBox(width: 10),
                Text(
                  'You and ${communityList.members} Members Liked this poll',
                  style: TextStyle(
                      fontSize: 14, color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            Divider(thickness: 1),
            SizedBox(height: 10),
            likeCommentShare(communityList),
            space15(),
          ],
        ),
      ),
    ),
  );
}

Widget pollCartSection() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          pollQuestion('Apollo Hospital, Banglore'),
          pollQuestion('20%'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          pollQuestion('AIIMS Delhi'),
          pollQuestion('20%'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          pollQuestion('Kokila Ben Dhirubhai Ambani, Mumbai'),
          pollQuestion('50%')
        ],
      )
    ],
  );
}

Widget pollQuestion(String question) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration:
    BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
    child: Text(question),
  );
}