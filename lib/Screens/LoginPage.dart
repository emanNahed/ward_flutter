import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ward_store/Api/UserApi.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Models/User.dart';
import 'package:ward_store/Screens/MainPage.dart';
import 'package:ward_store/Screens/createAccountPage.dart';
import 'package:ward_store/Services/UserService.dart';
import 'package:ward_store/Widgets/CTextField.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';
import 'package:ward_store/Widgets/RButton.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final mailController = TextEditingController();
  final passController = TextEditingController();

  bool _validateEmail = true;
  bool _validateName = true;
  bool _validatePass = true;

  Future<bool> _isLogin;
  UserApi _userService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _userService = UserApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset(wardLogo),
            SizedBox(
              height: 85,
            ),
            CTextField(
              icon: Icon(
                Icons.mail_outline,
              ),
              hintText: mail,
              controller: mailController,
              errorMess: !_validateEmail ? forgetMail : null,
            ),
            CTextField(
              icon: Icon(Icons.lock_outline),
              hintText: password,
              controller: passController,
              errorMess: !_validatePass ? forgetPass0 : null,
            ),
            SizedBox(height: 25),
            CButton(
                mainColor: violet100,
                text: login,
                colorText: white100,
                actions: () {
                  setState(() {
                    _validatePass = !passController.text.isEmpty;
                    _validateEmail = !mailController.text.isEmpty;
                  });
                  if (_validatePass && _validateEmail) {
                    try {
                      _userService.login(mailController.text, passController.text);
                      print('happy world');
                      Navigator.pushReplacement(context, _createRoute(MainPage()));
                    } on Exception catch (err) {
                      showDialog(context: context, builder: (context) => AlertDialog(
                        title: Text(err.toString()), actions: <Widget>[FlatButton(
                        child: Text("تم"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),],
                      ));
                    }
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              actions: [
                                FlatButton(
                                  child: Text("تم"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                              title: Text(
                                  'تم إدخال كلمة السر أو الإيميل بشكل خاطئ'),
                            ));
                  }
                }),
            Padding(
              padding: const EdgeInsets.only(right: 55.0, left: 55.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Divider(
                    height: 100.0,
                    thickness: 2.0,
                    color: gray,
                  ),
                ),
                Container(
                    height: 30.0,
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Text(
                      "أو",
                      style: TextStyle(fontFamily: 'Cairo'),
                    )),
                Expanded(
                  child: Divider(
                    height: 100.0,
                    thickness: 2.0,
                    color: gray,
                  ),
                ),
              ]),
            ),
            CButton(
                mainColor: facebookButton,
                text: login + ' ' + facebook,
                colorText: white100,
                actions: () {}),
            SizedBox(
              height: 15,
            ),
            CButton(
                mainColor: instagramColor,
                text: login + ' ' + instagram,
                colorText: white100,
                actions: () {
                  //Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) => RegisterPage()));
                }),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                forgetPass,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              onPressed: () {
                Navigator.push(context, _createRoute(ForgetPassword()));
              },
            ),
            FlatButton(
              child: Text(
                skip,
                style: TextStyle(fontFamily: 'Cairo'),
              ),
              textColor: facebookButton,
              onPressed: () {
                Navigator.push(context, _createRoute(MainPage()));
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text(
                  noAcount,
                  style: TextStyle(fontFamily: 'Cairo'),
                ),
                FlatButton(
                  child: Text(
                    createAcount,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  textColor: facebookButton,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, _createRoute(RegisterPage()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mailController.dispose();
    passController.dispose();
  }
}

Route _createRoute(Widget w) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => w,
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

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CAppBar(title: uploadPassword),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            enterEmail,
            style: TextStyle(
                fontSize: 25, fontFamily: 'Cairo', fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            whoWEmail,
            style: TextStyle(fontFamily: 'Cairo', color: gray),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 25,
          ),
          CTextField(
            hintText: mail,
          ),
          SizedBox(height: 16),
          CButton(
            text: accept,
            mainColor: violet100,
            colorText: white100,
            actions: () {
              Navigator.push(context, _createRoute(RestorePassword()));
            },
          )
        ],
      ),
    );
  }
}

class RestorePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: uploadPassword),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            rewritePassword,
            style: TextStyle(
                fontSize: 25, fontFamily: 'Cairo', fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            enterNewPassword,
            style: TextStyle(fontFamily: 'Cairo', color: gray),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 25,
          ),
          CTextField(
            icon: Icon(Icons.lock_outline),
            hintText: oldPassword,
          ),
          SizedBox(height: 15),
          CTextField(
            icon: Icon(Icons.lock_outline),
            hintText: newPassword,
          ),
          SizedBox(height: 16),
          CButton(
            text: accept,
            mainColor: violet100,
            colorText: white100,
            actions: () {},
          )
        ],
      ),
    );
  }
}
