import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ward_store/Helpers/SharedPref.dart';
import 'package:ward_store/Helpers/Texts.dart';



class ApiResponse {
  static final String url= 'https://wardksa.co/api/v1/';
  static final String client_id= '2';
  static final String client_secret= "WkOHB0hV7hTfMB1I5uW4mPPmvOGf4pE3NaYnQ2Sz";

  static Future<http.Response> fetchData(String subUrl, {bool isRequiredToken = false}) async {
    Map header= Map<String, String>();

    header["clientId"]= client_id;
    header["clientSecret"]= client_secret;
    if(isRequiredToken)
      header["Authorization"]= "Bearer " + SharedPref.token;

    final response = await http.get(url + subUrl, headers: header);

    // check status of api
    if(response.statusCode == 200 || response.statusCode == 201)
      return response;
    else if(response.statusCode == 502)
      throw Exception(networkerr);
    else if (response.statusCode == 401) {
      throw Exception(unAuth);
    } else {
      throw Exception(errorWhileFetch);
    }
  }

  static Future<http.Response> postData(subUrl, HashMap<String, dynamic> params, {bool isRequiredToken = false}) async {
    var headers= Map<String, String>();

    headers["clientId"]= client_id;
    headers["clientSecret"]= client_secret;
    headers["Content-Type"]="application/x-www-form-urlencoded";
    headers["Accept"]= "application/json";

    if(isRequiredToken)
      headers["Authorization"]= "Bearer " + SharedPref.token;

    var response= await http.post(url+ subUrl, body: jsonEncode(params), headers: headers);
    print('response'+ response.statusCode.toString());
    if(response.statusCode == 200 || response.statusCode == 201)
      return response;
    else if(response.statusCode == 502)
      throw Exception(networkerr);
    else if(response.statusCode == 404)
      throw Exception('not found');

    else
      throw Exception(jsonDecode(response.body)["success"].toString());
  }



}