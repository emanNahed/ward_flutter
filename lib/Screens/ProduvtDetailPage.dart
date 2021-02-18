import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Widgets/CustomGridItem.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';
import 'package:ward_store/Widgets/RButton.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar:  CAppBar(title: 'تفاصيل المنتج',),

      bottomSheet: Container(
        color: white100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CButton(
                width: 80,
                actions: () {},
                text: 'اشتري الآن',
                colorText: white100,
                mainColor: violet100,
              ),
              Expanded(
                child: SizedBox(),
              ),
              IconButton(
                padding: EdgeInsets.all(0.0),
                icon: Icon(
                  Icons.favorite,
                  color: gray,
                ),
                onPressed: () {},
              ),
              IconButton(
                padding: EdgeInsets.all(0.0),
                icon: Icon(
                  Icons.share,
                  color: gray,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(profileBack),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 10.0, top: 8, bottom: 8, left: 8),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        'بوكس شوكولاتى مع ورد',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Cairo', fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Text(
                        '300 ريال',
                        style: TextStyle(color: gray),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CButton(
                        height: 40,
                        width: 180,
                        text: 'حجم ثابت 35 شوكولاتة',
                        colorText: white100,
                        mainColor: violet100,
                        actions: () {},
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: violet100,
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'الوصف: بوكس كبير وشفاف مزين بالورد بالورد بالورد بالورد بالورد بالورد',
                      style: TextStyle(fontSize: 14, fontFamily: 'Cairo', color: gray, fontWeight: FontWeight.normal),
                      maxLines: 2,
                    )),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        //child:
                      ),
                      SizedBox(width: 10,),
                      Text('سلطان الورود', style: TextStyle(fontFamily: 'Cairo'),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('منتجات مشابهة', style: TextStyle(color: gray, fontFamily: 'Cairo'), textAlign: TextAlign.right,),
                ),
                GridView.count(
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
              ],
            ),
          ),
          Positioned(
              top: 0, right: 0, left: 0, child: CAppBar(title: profilePage)),
        ],
      ),
    );
  }
}
