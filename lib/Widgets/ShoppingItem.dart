import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/rubbish_icon_icons.dart';
import 'package:ward_store/Widgets/RButton.dart';

class ShoppingItem extends StatefulWidget {
  String favImage;
  String favName;
  String favPrice;

  ShoppingItem({this.favImage, this.favPrice, this.favName});

  @override
  _ShoppingItem createState() => _ShoppingItem();
}

class _ShoppingItem extends State<ShoppingItem> {
  String favImage;
  String favName;
  String favPrice;

  _ShoppingItem(
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
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 16, right: 8),
                        icon: Icon(
                          RubbishIcon.rubbish,
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: violet100)),
                          child: IconButton(
                            alignment:Alignment.center,
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.add, size: 15, color: violet100,),
                            onPressed: () {},
                          )),
                      Container(
                          width: 36,
                          height: 36,
                          margin: EdgeInsets.only(right: 16, left: 16),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(18)),
                              border: Border.all(color: violet100)),
                          child: Center(child: Text('2', style: TextStyle(color: violet100),),),),
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: violet100)),
                          child: IconButton(
                            alignment:Alignment.center,
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.add, size: 15, color: violet100,),
                            onPressed: () {},
                          ))
                    ],
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
