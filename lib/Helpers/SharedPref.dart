
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences pref;
  static var token;

  static Future<SharedPreferences> init() async{
    if(pref == null) pref= await SharedPreferences.getInstance();

    return pref;
  }

  static getString(String key){
    return pref.getString(key)?? null;
  }

  static setString(String key, String val){
    pref.setString(key, val);
  }
}
