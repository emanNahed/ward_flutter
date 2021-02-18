import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers//Colors.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Screens/MainPage.dart';
import 'package:ward_store/Widgets/CTextField.dart';
import 'package:ward_store/Widgets/CircularCheckBox.dart';
import 'package:ward_store/Widgets/RButton.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final nameController= TextEditingController();
  final mailController= TextEditingController();
  final passController= TextEditingController();
  final phoneController= TextEditingController();
  final addressController= TextEditingController();
  bool _rulesAgree = false;


  bool _validateEmail= true;
  bool _validateName= true;
  bool _validatePass= true;
  bool _validatePhone= true;

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
            Container(
                padding: EdgeInsets.only(top: 35, bottom: 35),
                child: Text(
                  createAcount,
                  style: TextStyle(fontFamily: 'Cairo'),
                )),
            CTextField(
              hintText: name,
              controller: nameController,
              errorMess: !_validateName? forgetName: null,
            ),
            CTextField(
              hintText: phoneNumber,
              controller: phoneController,
              errorMess: !_validatePhone? forgetPhone: null,
            ),
            CTextField(
              hintText: password,
              controller: passController,
              errorMess: !_validatePass? forgetPass0: null,
            ),
            CTextField(
              hintText: mail,
              controller: mailController,
              errorMess: !_validateEmail? forgetMail: null,
            ),
            CTextField(
              hintText: address,
              controller: addressController,
              preIcon: Icon(Icons.add_circle),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 310) / 2,
                ),
                CircularCheckBox(
                  checked: _rulesAgree,
                  activeColor: violet100,
                  inActiveColor: white100,
                  actions: () {
                    setState(() {
                      _rulesAgree = !_rulesAgree;
                    });
                  },
                ),
                Text(
                  acceptRules,
                  style: TextStyle(fontFamily: 'Cairo'),
                ),
              ],
            ),
            SizedBox(height: 40),
            CButton(
                mainColor: violet100,
                text: login,
                colorText: white100,
                actions: () {
                  setState(() {
                    _validateName= !nameController.text.isEmpty;
                    _validatePass= !passController.text.isEmpty;
                    _validateEmail= !mailController.text.isEmpty;
                    _validatePhone= !phoneController.text.isEmpty;
                  });

                  if(_validateName && _validatePass && _validateEmail && _validatePhone)
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                }),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
