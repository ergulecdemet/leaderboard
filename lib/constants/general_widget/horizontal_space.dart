import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    required this.width,
    Key? key,
  }) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
    );
  }
}
