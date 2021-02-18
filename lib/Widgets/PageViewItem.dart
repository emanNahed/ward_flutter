
import 'package:flutter/cupertino.dart';

class PageViewItem extends StatelessWidget{
  final String imageName;
  final String text;

  PageViewItem({Key key, @required this.imageName,@required this.text}): super(key: key);

  @override
  Widget build(BuildContext context) {

      return Column(
        children: <Widget>[
          Image(image: AssetImage(imageName)),
          SizedBox(height: 85),
          Container(
              width: 338,
              child: Text(text, maxLines: 5, style: TextStyle(fontSize: 12,fontFamily: 'Cairo'),textDirection: TextDirection.rtl,)
          ),
        ],

    );
  }
  
}