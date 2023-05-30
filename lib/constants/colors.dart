import 'package:flutter/services.dart';

AppColors? get appColors => AppColors.instance;

class AppColors {
  static AppColors? _instance;
  static AppColors? get instance {
    _instance ??= AppColors._init();
    return _instance;
  }

  //-----------------------------------------------------------------------------
  final Brightness brightnessLight = Brightness.light;
  AppColors._init();
  final SystemUiOverlayStyle systemUiOverlayLight = SystemUiOverlayStyle.light;
  final Color whiteColor = const Color(0xFFFFFFFF);
  final Color blackColor = const Color(0xFF000000);
  final Color greyColor = const Color.fromARGB(255, 140, 138, 138);
  final Color transparentColor = const Color(0x00101828);
  final Color redColor = const Color(0xFFFF0404);
  final Color yellowColor = const Color(0xFFE1FF00);
  final Color blueColor = const Color.fromARGB(255, 0, 89, 255);
  final Color pinkColor = const Color.fromARGB(255, 197, 133, 193);
  final Color greenColor = const Color.fromARGB(255, 15, 177, 13);
  final Color orangeAccentColor = const Color(0xFFFFAB40);
}
