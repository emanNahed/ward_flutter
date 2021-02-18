import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Widgets/CDrawer.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';
import 'package:ward_store/Widgets/favoriteItem.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CAppBar(
        title: 'المفضلة',
      ),
      drawer: CDrawer(),
      body: ListView.separated(
          itemBuilder: (BuildContext ctxt, int index) => FavoriteItem(),
          separatorBuilder: (BuildContext context, int index){
            return
               Divider(
                thickness: 2,
                height:40,
              );
          },
          itemCount: 50),
    );
  }
}
