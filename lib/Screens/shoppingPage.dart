import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Helpers/my_flutter_app_icons.dart';
import 'package:ward_store/Provide/ChangePage.dart';
import 'package:ward_store/Widgets/CDrawer.dart';
import 'package:ward_store/Widgets/CTextField.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';
import 'package:ward_store/Widgets/RButton.dart';
import 'package:ward_store/Widgets/ShoppingItem.dart';

class ShoppingPage extends StatefulWidget {
  _ShoppingPage createState() => _ShoppingPage();
}

class _ShoppingPage extends State<ShoppingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //selectedIndex = Provider.of<ChangePage>(context).getIndex();
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = Provider.of<ChangePage>(context).getIndex();

    // TODO: implement build
    return Scaffold(
      appBar: CAppBar(
        title: 'صفحة المشتريات',
      ),
      drawer: CDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2,
              height: 20,
              endIndent: 0,
              indent: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: selectedIndex == 0 ? 60 : 50,
                  height: selectedIndex == 0 ? 60 : 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: selectedIndex == 0
                          ? Border.all(color: violet100)
                          : null),
                  padding: EdgeInsets.all(selectedIndex == 0 ? 4 : 0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: selectedIndex == 0
                              ? Border.all(color: violet100)
                              : null,
                          color:
                              selectedIndex == 0 ? white100 : Colors.black12),
                      child: Icon(
                        MyFlutterApp.group_444,
                        color: selectedIndex == 0 ? violet100 : black,
                      )),
                ),
                Container(
                  width: selectedIndex == 1 ? 60 : 50,
                  height: selectedIndex == 1 ? 60 : 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: selectedIndex == 1
                          ? Border.all(color: violet100)
                          : null),
                  padding: EdgeInsets.all(selectedIndex == 1 ? 4 : 0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: selectedIndex == 1
                              ? Border.all(color: violet100)
                              : null,
                          color:
                              selectedIndex == 1 ? white100 : Colors.black12),
                      child: Icon(
                        Icons.location_on,
                        color: selectedIndex == 1 ? violet100 : black,
                      )),
                ),
                Container(
                  width: selectedIndex == 2 ? 60 : 50,
                  height: selectedIndex == 2 ? 60 : 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: selectedIndex == 2
                          ? Border.all(color: violet100)
                          : null),
                  padding: EdgeInsets.all(selectedIndex == 2 ? 4 : 0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: selectedIndex == 2
                              ? Border.all(color: violet100)
                              : null,
                          color:
                              selectedIndex == 2 ? white100 : Colors.black12),
                      child: Icon(
                        Icons.attach_money,
                        color: selectedIndex == 2 ? violet100 : black,
                      )),
                ),
                Container(
                  width: selectedIndex == 3 ? 60 : 50,
                  height: selectedIndex == 3 ? 60 : 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: selectedIndex == 3
                          ? Border.all(color: violet100)
                          : null),
                  padding: EdgeInsets.all(selectedIndex == 3 ? 4 : 0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: selectedIndex == 3
                              ? Border.all(color: violet100)
                              : null,
                          color:
                              selectedIndex == 3 ? white100 : Colors.black12),
                      child: Icon(
                        Icons.golf_course,
                        color: selectedIndex == 3 ? violet100 : black,
                      )),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              height: 20,
              endIndent: 0,
              indent: 0,
            ),
            Consumer<ChangePage>(builder: (context, index, child) {
              print('index= ' + '${index.getIndex()}');

              if (index.getIndex() == 0)
                return FirstPage();
              else if (index.getIndex() == 1)
                return SecondPage();
              else if (index.getIndex() == 2) return ThirdPage();
              return ForthPage();
            }),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          color: Color(0xFFE8EAEE),
          height: 60,
          child: Row(
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(
                'السعر الكلي: ',
                style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Text(
                '100 ريال',
                style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
              ),
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => ShoppingItem(),
              separatorBuilder: (BuildContext context, int index) => Divider(
                    thickness: 2,
                    height: 20,
                  ),
              itemCount: 2),
        ),
        Divider(
          height: 8,
          thickness: 2,
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CButton(
              width: MediaQuery.of(context).size.width / 2 - 50,
              text: 'أتمم عملية الشراء',
              mainColor: violet100,
              colorText: white100,
              actions: () {
                Provider.of<ChangePage>(context, listen: false).moveToPage(1);
              },
            ),
            CButton(
              width: MediaQuery.of(context).size.width / 2 - 50,
              text: 'مسح الكل',
              mainColor: Colors.red,
              colorText: white100,
              actions: () {},
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          alignment: Alignment.centerRight,
          color: Color(0xFFE8EAEE),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Text(
            'معلومات التسليم الخاصة بك',
            style: TextStyle(fontSize: 12, fontFamily: 'Cairo'),
            textDirection: TextDirection.rtl,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CTextContainer(title: 'الاسم الأول'),
        CTextContainer(
          title: 'الاسم الثاني',
        ),
        CTextContainer(
          title: mail,
        ),
        CTextContainer(
          title: phoneNumber,
        ),
        CTextContainer(
          title: 'تاريخ التسليم',
        ),
        Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          alignment: Alignment.centerRight,
          color: Color(0xFFE8EAEE),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Text(
            'العنوان',
            style: TextStyle(fontSize: 12, fontFamily: 'Cairo'),
            textDirection: TextDirection.rtl,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        CButton(
          text: 'حفظ بيانات الشحن',
          colorText: white100,
          mainColor: violet100,
          actions: () {
            Provider.of<ChangePage>(context, listen: false).moveToPage(2);
          },
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Color(0xFFE8EAEE),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 60,
                right: 150,
                child: Container(
                  height: 90,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: black, width: 4),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 16.0, bottom: 4.0),
                alignment: Alignment.bottomRight,
                child: Text('أضف بيانات البطاقة',
                    style: TextStyle(fontFamily: 'Cairo')),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'cv/v',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: '22/2',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: '2442 2442 2442 2442',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: 25,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: violet100),
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 8),
          padding: EdgeInsets.all(8),
          color: Color(0xFFE8EAEE),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Text(
            'الاسم على البطاقة',
            style: TextStyle(fontFamily: 'Cairo', color: gray),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CButton(
          text: 'حفظ بيانات الشحن',
          colorText: white100,
          mainColor: violet100,
          actions: () {
            Provider.of<ChangePage>(context, listen: false).moveToPage(3);
          },
        ),
      ],
    );
  }
}

class ForthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        SizedBox(
          height: 70,
        ),
        Image.asset('assets/Done.png'),
        Text('شكرا لك'),
        Text('سوف يتم شحن منتجك '),
        SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: CButton(
            text: 'الانتقال إلى طلباتي',
            colorText: white100,
            mainColor: violet100,
            actions: () {},
          ),
        ),
      ],
    );
  }
}
