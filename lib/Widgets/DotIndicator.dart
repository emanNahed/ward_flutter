
import 'package:flutter/cupertino.dart';
import 'package:ward_store/Helpers/Colors.dart';

class DotIndicator extends StatelessWidget{
  bool isActive;
  Color colorTap;
  Color colorunTap;

  DotIndicator( this.isActive, this.colorTap, this.colorunTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive? 12: 12,
      width: isActive? 12: 12,
      decoration: BoxDecoration(
        color: isActive? colorTap: colorunTap,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),

    );
  }
}