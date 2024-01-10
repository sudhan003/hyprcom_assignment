import 'package:flutter/cupertino.dart';

class SizeUtils {
  static Size screenSize(BuildContext context) {
    return MediaQuery.sizeOf(context);
  }
}
