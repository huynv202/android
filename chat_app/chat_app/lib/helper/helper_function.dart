import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String userLoggedInkey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "EMAILNAMEKEY";

//saving the data to SF

//
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInkey);
  }
}
