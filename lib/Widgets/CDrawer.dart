
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Helpers/my_flutter_app_icons.dart';
import 'package:ward_store/Screens/HomePage.dart';
import 'package:ward_store/Screens/LoginPage.dart';
import 'package:ward_store/Screens/NotificationPage.dart';
import 'package:ward_store/Screens/OrderPage.dart';
import 'package:ward_store/Screens/ProfilePage.dart';
import 'package:ward_store/Screens/ScoresPage.dart';
import 'package:ward_store/Screens/WhoWeArePage.dart';

class CDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: violet100,
            child: Center(
              widthFactor: 500,
              child: CustomuserAccountHeader(
                AccountImage: sunFlower,
                AccountName: 'eman amassi',
                AccountScores: '35',
              ),
            ),
          ),
          ListTile(
              title: Text(mainPage),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
          ListTile(
              title: Text(profilePage),
              leading: Icon(Icons.person_outline),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              }),
          ListTile(
              title: Text(whoPage),
              leading: Icon(Icons.help_outline),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WhoPage()));
              }),
          ListTile(
              title: Text(orderPage),
              leading: Icon(Icons.assignment_turned_in),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderPage()));
              }),
          ListTile(
              title: Text(notPage),
              leading: Icon(Icons.notifications_active),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotificationPage()));
              }),
          ListTile(
              title: Text(scorePage),
              leading: Icon(Icons.score),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ScorePage()));
              }),
          ListTile(
              title: Text(logOut),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }),
        ],
      ),
    );
  }

}



class CustomuserAccountHeader extends StatelessWidget{
  String AccountImage;
  String AccountName;
  String AccountScores;

  CustomuserAccountHeader({this.AccountScores, this.AccountName, this.AccountImage});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: violet100,
      padding: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(AccountImage),
            Text(AccountName,style: TextStyle(color: white100, fontFamily: 'Cairo'),),
            Text(AccountScores, style: TextStyle(color: white100, fontFamily: 'Cairo'),),
          ],
        ),
      ),
    );
  }

}