import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafi/classes/CommunityC.dart';
import 'package:leafi/classes/CommunityList.dart';
import 'package:leafi/pages/Posts.dart';

Widget CDetails(BuildContext context, CommunityC listCommunity) {
  return Card(
    child: GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Posts())),
      child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              renderCategoryTime(listCommunity),
              space10(),
              userAvatarSection(context, listCommunity),
              space15(),
              Text(listCommunity.name,
                  softWrap: true,
                  maxLines: 2,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              space15(),
              Text(listCommunity.description, style: TextStyle(fontSize: 14, color: Colors.grey)),
              space15(),
              // setLocation(listCommunity),
              Divider(thickness: 1),
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.addressBook),
                  SizedBox(width: 10),
                  Text(
                    '${listCommunity.members} Members have this questions',
                    style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              Divider(thickness: 1),
              SizedBox(height: 10),
              likeCommentShare(listCommunity),
              space15(),
            ],
          )),
    ),
  );
}






Widget likeCommentShare(CommunityC listCommunity) {

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      GestureDetector(
          onTap: () {
            print('FB Reactions Tapped');
            // FbReactionBox();
          },
          child: Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.thumbsUp,
                size: 18,
              ),
              SizedBox(width: 5),
              Text('${listCommunity.likes}')
            ],
          )),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () => debugPrint('Comment Tapped'),
                child: Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.comment, size: 18),
                    SizedBox(width: 5),
                    Text(listCommunity.comments)
                  ],
                ))
          ]),
      Icon(FontAwesomeIcons.bookmark, size: 18),
      GestureDetector(
          onTap: () {
            // Share.share('check out my website https://example.com');
          },
          child: Icon(FontAwesomeIcons.shareAlt, size: 18))
    ],
  );
}







Widget setLocation(CommunityC listCommunity) {
  return Row(
    children: <Widget>[
      Icon(Icons.location_on, color: Colors.teal),
      SizedBox(width: 15),
      Text(
        listCommunity.location,
        style: TextStyle(fontSize: 12, color: Colors.teal),
      ),
    ],
  );
}

Widget userAvatarSection(BuildContext context, CommunityC listCommunity) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: ClipOval(child: Image.network(listCommunity.avatarImg)),
                    radius: 20),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(listCommunity.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(listCommunity.subcategory,
                            softWrap: true,
                            style: TextStyle(fontSize: 14, color: Colors.grey))
                      ],
                    ),
                    SizedBox(height: 4),
                    Text('DIAGNOSED RECENTALLY',
                        style: TextStyle(fontSize: 12, color: Colors.teal)),
                  ],
                )
              ],
            ),
            moreOptions3Dots(context),
          ],
        ),
      )
    ],
  );
}

Widget moreOptions3Dots(BuildContext context) {
  return GestureDetector(
    // Just For Demo, Doesn't Work As Needed
    onTap: () =>
        _onCenterBottomMenuOn3DotsPressed(context), //_showPopupMenu(context),
    child: Container(
      child: Icon(FontAwesomeIcons.ellipsisV, size: 18),
    ),
  );
}

Widget space10() {
  return SizedBox(height: 10);
}

Widget space15() {
  return SizedBox(height: 10);
}

Widget renderCategoryTime(CommunityC listFeed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(listFeed.category,
          style: TextStyle(fontSize: 14, color: Colors.grey[700])),
      Text(listFeed.time,
          style: TextStyle(fontSize: 14, color: Colors.grey[700])),
    ],
  );
}

_onCenterBottomMenuOn3DotsPressed(BuildContext context) {

  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Color(0xFF737373),
          child: _buildBottomNavMenu(context),
        );
      });
}

Widget _buildBottomNavMenu(BuildContext context) {

  List<Menu3DotsModel> listMore = [];
  listMore.add(Menu3DotsModel('Hide <Post type>', 'See fewer posts like this', Icons.block));
  listMore.add(Menu3DotsModel('Unfollow <username>', 'See fewer posts like this', Icons.person_add));
  listMore.add(Menu3DotsModel('Report <Post type>', 'See fewer posts like this', Icons.info));
  listMore.add(Menu3DotsModel('Copy <Post type> link', 'See fewer posts like this', Icons.insert_link));


  return Container(
    height: 300,
    decoration: BoxDecoration(
      color: Theme.of(context).canvasColor,
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(10),
        topRight: const Radius.circular(10),
      ),
    ),

      child: ListView.builder(
        itemCount: listMore.length,
          itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text(listMore[index].title, style: TextStyle(fontSize: 18),),
          subtitle: Text(listMore[index].subtitle),
          leading: Icon(listMore[index].icons, size: 20, color: Colors.teal,),
        );
      })


  );
}


class Menu3DotsModel{

  String title;
  String subtitle;
  IconData icons;

  Menu3DotsModel(this.title, this.subtitle, this.icons);

}