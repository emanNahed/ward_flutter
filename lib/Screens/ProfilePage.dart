import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Widgets/CDrawer.dart';
import 'package:ward_store/Widgets/CTextField.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';

class ProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CDrawer(),
      body:  Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(profileBack),
              SizedBox(height: 120,),
              CTextContainer(title: 'إيمان ناهض العمصي',),
              CTextContainer(title: '0595150962',),
            ],
          ),
          Positioned(
              top: 0, right: 0, left: 0, child: CAppBar(title: profilePage)),
          Positioned(
            top: MediaQuery.of(context).size.height / 3 - 60,
            left: MediaQuery.of(context).size.width / 2 - 60,
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Colors.transparent,
              child: Image.asset(profileImage),
            ),
          ),
        ],
      ),
    );
  }
}

