import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Helpers/my_flutter_app_icons.dart';
import 'package:ward_store/Screens/DashboardPage.dart';
import 'package:ward_store/Screens/FavoritePage.dart';
import 'package:ward_store/Screens/HomePage.dart';
import 'package:ward_store/Screens/ProfilePage.dart';
import 'package:ward_store/Screens/WhoWeArePage.dart';
import 'package:ward_store/Screens/shoppingPage.dart';
import 'package:ward_store/Widgets/CDrawer.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainPage extends StatefulWidget{
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex=0;
  static List<Widget> widgetsOption= <Widget>[HomePage(), DashboardPage(), ShoppingPage(), FavoritePage(), ProfilePage()];

  void _onTap(int index){
    setState(() {
      _selectedIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //drawer: CDrawer(),
      body: widgetsOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.group_444,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: violet100,
        unselectedItemColor: Colors.black45,
        onTap: _onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
