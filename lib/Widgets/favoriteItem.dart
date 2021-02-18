import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/rubbish_icon_icons.dart';
import 'package:ward_store/Widgets/RButton.dart';

class FavoriteItem extends StatefulWidget {
  String favImage;
  String favName;
  String favPrice;

  FavoriteItem({this.favImage, this.favPrice, this.favName});

  @override
  _FavoriteItem createState() => _FavoriteItem();
}

class _FavoriteItem extends State<FavoriteItem> {
  String favImage;
  String favName;
  String favPrice;

  _FavoriteItem(
      {this.favImage = 'assets/propose.png',
      this.favPrice = '55',
      this.favName = 'ورد أفراح'});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Image.asset(
                'assets/favImage.png'
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        'ورد روسي',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text('55 ريال',
                          style: TextStyle(
                              fontFamily: 'Cairo', color: Colors.black12)),
                      SizedBox(width: 20,),
                      IconButton(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 16, right: 8),
                        icon: Icon(RubbishIcon.rubbish,size: 24,),

                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CButton(
                    width: 80,
                    height: 50,
                    text: 'أضف للسلة',
                    colorText: violet100,
                    mainColor: white100,
                    borderColor: violet100,
                    actions: () {},
                  )
                ],
              ),
            ),
      ),


        ],
      ),
    );
  }
}
