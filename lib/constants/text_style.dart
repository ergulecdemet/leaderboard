import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

AppTextStyles? get appTextStyles => AppTextStyles.instance;

class AppTextStyles {
  static AppTextStyles? _instance;
  static AppTextStyles? get instance {
    _instance ??= AppTextStyles._init();
    return _instance;
  }

  AppTextStyles._init();

  TextStyle sp6(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 6.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp8(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 8.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp10(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 10.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp12(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 12.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp14(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 14.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp16(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 16.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp18(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 18.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp20(BuildContext context, Color? color, [FontWeight? fontWeight]) {
    return TextStyle(
      fontSize: 20.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  //------------LİNESTYLE-------------
  TextStyle sp6line(BuildContext context, Color? color,
      [FontWeight? fontWeight]) {
    return TextStyle(
      decoration: TextDecoration.lineThrough,
      fontSize: 6.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp8line(BuildContext context, Color? color,
      [FontWeight? fontWeight]) {
    return TextStyle(
      decoration: TextDecoration.lineThrough,
      fontSize: 8.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp10line(BuildContext context, Color? color,
      [FontWeight? fontWeight]) {
    return TextStyle(
      decoration: TextDecoration.lineThrough,
      fontSize: 10.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }

  TextStyle sp12line(BuildContext context, Color? color,
      [FontWeight? fontWeight]) {
    return TextStyle(
      decoration: TextDecoration.lineThrough,
      fontSize: 12.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: 'Lexend',
    );
  }
}
