import 'package:connectivity/connectivity.dart';
class Internet{

  static bool hasInternet(){
    var connectivityResult =  (new Connectivity().checkConnectivity());
    //Checking internet status  a mobile network or wifi network.
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      return true;
    }

    return false;
  }

}