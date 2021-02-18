import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Screens/ProduvtDetailPage.dart';
import 'package:ward_store/Widgets/DotIndicator.dart';
import 'package:ward_store/Widgets/PageViewItem.dart';

class HomePageView extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePageView> {
  int _currentPage = -1;
  bool active = true;
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _currentPage += (_currentPage < 2) ? 1 : (-1 * _currentPage);
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 290,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
                  },
                  child: Image.asset(
                    'assets/usung.png',
                  ),
                ),
                Image.asset('assets/usung.png'),
                Image.asset('assets/usung.png'),
              ],
              onPageChanged: _onPageChanged,
              controller: pageController,
            ),
          ),
          Positioned(
            top: 25.0,
            right: 15.0,
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: white100,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 60,
            right: 15,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text('بوكس شوكولاتة مع مش عارفة شو',style: TextStyle(fontFamily: 'Cairo', color: white100),),
                  Text('30 ريال',style: TextStyle(fontFamily: 'Cairo', color: white100),),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i <= 2; i++)
                  if (_currentPage == i)
                    DotIndicator(true, white100, white70)
                  else
                    DotIndicator(false, white100, white70),
              ],
            ),
          )
        ],
      ),
    );
  }
}
