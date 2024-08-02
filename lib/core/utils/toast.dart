import 'package:fluttertoast/fluttertoast.dart';

class AppToast {

  static show({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      fontSize: 16.0,
    );
  }

}