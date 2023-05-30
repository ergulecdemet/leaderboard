import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VertivalSpace extends StatelessWidget {
  const VertivalSpace({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h);
  }
}
