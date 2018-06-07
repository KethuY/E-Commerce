import 'package:shared_preferences/shared_preferences.dart' ;
class SharedPref{

  static String getUserName(){
    SharedPreferences prefs =  SharedPreferences.getInstance() as SharedPreferences;
    return prefs.getString("name");
  }

  static void setUserName(String name){
    SharedPreferences prefs =  SharedPreferences.getInstance() as SharedPreferences;
    prefs.setString("name", name);
  }

}