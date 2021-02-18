
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';

class OrderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar:  CAppBar(title: 'طلباتي'),body: Center(child: Text('order page')));
  }

}