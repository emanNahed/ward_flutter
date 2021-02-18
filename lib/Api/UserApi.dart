
 import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ward_store/Api/ApiResponse.dart';
import 'package:ward_store/Helpers/SharedPref.dart';
import 'package:ward_store/Helpers/Texts.dart';

class UserApi {

  Future<void> login(String userName, String email) async{
   HashMap<String, dynamic> hashMap= HashMap<String, dynamic>();
   hashMap["email"]=  email;
   hashMap["password"]= password;
   print('hashmap' + hashMap.toString());
    try {
    var response = await ApiResponse.postData("login", hashMap);
      final json = jsonDecode(response.body)["success"];
    String token = json["token"];
    SharedPref.token = token;
   }
    on Exception catch (err){
    print('err' + err.toString());
    throw Exception(err.toString());}
  }
}
