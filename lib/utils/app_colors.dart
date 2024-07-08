import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color c4178F3 = Color(0xFF4178F3);
  static const Color c030303 = Color(0xFF030303);
  static const Color c1B08DA = Color(0xFF1B08DA);
  static const Color c1E1F20 = Color(0xFF1E1F20);
  static const Color c8F92A1 = Color(0xFF8F92A1);
  static const Color c030319 = Color(0xFF030319);

  static const LinearGradient splashBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFE9F0FF),
      Color(0xFFD7ECFF),
    ],
  );
}
