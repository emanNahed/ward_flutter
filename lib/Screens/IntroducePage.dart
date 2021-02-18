import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Models/User.dart';
import 'package:ward_store/Provide/ChangePage.dart';
import 'package:ward_store/Screens/LoginPage.dart';
import 'package:ward_store/Widgets/CustomPageView.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ward_store/Widgets/RButton.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChangePage(0),
      child: MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ar', ''),
        ],
        locale: Locale('ar', 'AE'),
        title: "eman",
        routes: {},
        home: IntroducePage(),
      ),
    ),
  );
}

class IntroducePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: CustomPageView(),
            ),
            Expanded(
              child: Center(
                child: CButton(
                  text: skip,
                  colorText: white100,
                  mainColor: violet100,
                  actions: () {
                    Navigator.pushReplacement(context, _createRoute());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
