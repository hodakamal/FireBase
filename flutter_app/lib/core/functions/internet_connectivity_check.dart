import 'package:connectivity_plus/connectivity_plus.dart';

Future<void> checkInternetConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult != ConnectivityResult.mobile &&
      connectivityResult != ConnectivityResult.wifi) {
    throw "Check Your Internet Connection";
  }
}
