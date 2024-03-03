
// ignore_for_file: file_names


import 'package:coffee/constants/exports.dart';

class UserSimplePreferences {
  static late SharedPreferences _preferences;
  static const String isUserLoggedIn = 'isuserloggedin';
  static const String isToken = 'token';
  static const String userDataLocal = 'userData';
  static const String nameofUser = 'name';
  static const String uniquecode = 'uniquecode';
  static const String fcmToken = 'fcmToken';
  static const String googlemail = 'email';
  static const String userID = 'userID';
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setLoginStatus({required bool loginStatus}) async {
    await _preferences.setBool(isUserLoggedIn, loginStatus);
  }

  static bool? getLoginStatus() {
    return _preferences.getBool(isUserLoggedIn);
  }

  static Future setuniquecode(String? identifier) async {
    await _preferences.setString(uniquecode, identifier!);
  }

  static String? getuniquecode() {
    return (_preferences.getString(uniquecode));
  }

  static Future setUserdata({required String userData}) async {
    await _preferences.setString(userDataLocal, userData);
  }

  static String? getUserdata() {
    return (_preferences.getString(userDataLocal));
  }
  static Future setfcmToken(String? token) async {
    await _preferences.setString(fcmToken, token!);
  }

  static String? getfcmToken() {
    return (_preferences.getString(fcmToken));
  }

  static Future setgooglemail(String? token) async {
    await _preferences.setString(googlemail, token!);
  }

  static String? getgooglemail() {
    return (_preferences.getString(googlemail));
  }

  static Future setToken({required String token}) async {
    await _preferences.setString(isToken, token);
  }

  static String? getToken() {
    return _preferences.getString(isToken);
  }
  static Future setName({required String name}) async {
    await _preferences.setString(nameofUser, name);
  }

  static String? getName() {
    return _preferences.getString(nameofUser);
  }
  static Future setUserID(String? userid) async {
    await _preferences.setString(userID, userid!);
  }

  static String? getUserID() {
    return (_preferences.getString(userID));
  }

  static void clearAllData() {
    _preferences.clear();
  }
}
