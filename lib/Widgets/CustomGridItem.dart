import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';

class GridItem extends StatefulWidget {
  String imageUrl;
  String text;
  GridItem({this.imageUrl, this.text});

  _GridItem createState() => _GridItem(imageUrl: imageUrl, text: text);
}

class _GridItem extends State<GridItem> {
  String imageUrl;
  String text;

  _GridItem({this.imageUrl, this.text});

  bool isFvorite = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                width: 100,
                height: 250,
                decoration: BoxDecoration(
                  color: violet100,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                  child: Text(''),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(isFvorite? Icons.favorite: Icons.favorite_border),
                  onPressed: () {setState(() {
                    isFvorite= !isFvorite;
                  });},
                ),
              ),
            ],
          ),
        ),
        Text(text),
      ],
    );
  }
}
