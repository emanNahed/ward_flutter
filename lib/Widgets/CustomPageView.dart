import 'package:flutter/cupertino.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';

import 'DotIndicator.dart';
import 'PageViewItem.dart';

class CustomPageView extends StatefulWidget {
  @override
  _CustomPageView createState() => _CustomPageView();
}

class _CustomPageView extends State<CustomPageView> {
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
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: _onPageChanged,
            children: <Widget>[
              PageViewItem(
                imageName: sunFlower,
                text: introduce,
              ),
              PageViewItem(
                imageName: propose,
                text: introduce,
              ),
              PageViewItem(
                imageName: colorFlower,
                text: introduce,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i <= 2; i++)
                if (_currentPage == i)
                  DotIndicator(true,violet100, violet70)
                else
                  DotIndicator(false,violet100, violet70),
            ],
          ),
        ),
      ],
    );
  }
}
