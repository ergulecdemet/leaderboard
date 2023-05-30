import 'package:flutter/material.dart';
import 'package:leaderboard/constants/colors.dart';
import 'package:leaderboard/constants/general_widget/vertical_space.dart';
import 'package:leaderboard/constants/text_style.dart';
import 'package:sizer/sizer.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    this.radius = 30,
    this.color = const Color(0xFF000000),
    this.style,
    this.text = "",
    this.child,
    this.image,
    this.name,
    Key? key,
  }) : super(key: key);
  final double radius;
  final Color color;
  final TextStyle? style;
  final String text;
  final Widget? child;
  final String? image;
  final String? name;

  @override
  Widget build(BuildContext context) {
    double bottomOverflowSpace = -0.2.h;

    return SizedBox(
      width: 30.w,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                child ?? Container(),
                Container(
                  height: radius,
                  width: radius,
                  decoration: BoxDecoration(
                    color: appColors!.whiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: color, width: 2),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image ??
                          "https://microsac.es/wp-content/uploads/2019/06/8V1z7D_t20_YX6vKm.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: bottomOverflowSpace - 8,
                  child: Container(
                    height: radius / 3,
                    width: radius / 3,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(radius / 15)),
                    child: Center(
                      child: Text(
                        text,
                        style: style,
                      ),
                    ),
                  ),
                )
              ],
            ),
            VertivalSpace(height: bottomOverflowSpace.abs()),
            Text(
              textAlign: TextAlign.center,
              maxLines: 2,
              name ?? "Name",
              style: appTextStyles!.sp10(context, appColors!.greyColor),
            )
          ],
        ),
      ),
    );
  }
}
