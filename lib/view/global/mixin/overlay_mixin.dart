import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

mixin OverlayMixin {
  void showErrorToast(String message) {
    Fluttertoast.showToast(
      msg: message.substring(0, min(message.length, 200)),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
