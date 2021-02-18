import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Widgets/CDrawer.dart';
import 'package:ward_store/Widgets/CustomGridItem.dart';
import 'package:ward_store/Widgets/CustomPageView.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';
import 'package:ward_store/Widgets/PageViewHome.dart';

class HomePage extends StatelessWidget {
  final GlobalKey _GridHeight= GlobalKey();
  final GlobalKey _appbarHeight= GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CAppBar(
        title: mainPage,

      ),
      drawer: CDrawer(),
      body: ListView(
        children: <Widget>[
          HomePageView(),
             Center(
               child: GridView.count(
                 padding: EdgeInsets.only(right: 16),
                 physics: ScrollPhysics(),
                 shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1.5 / 2,
                children: List.generate(
                    10,
                    (index) => GridItem(
                          imageUrl: 'assets/tryPict.jpg',
                          text: 'الحياة صعبة',
                        )),
          ),
             ),
        ],
      ),
    );
  }
}
