import 'package:flutter/material.dart';

class AppSizes {
  static late double wratio, hratio;
  static late double padding24w;

  static void init(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    wratio = size.width / 428;
    hratio = size.height / 926;
    padding24w = 24 * wratio;
  }
}
