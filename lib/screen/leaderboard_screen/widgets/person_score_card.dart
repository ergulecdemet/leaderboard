import 'package:flutter/material.dart';
import 'package:leaderboard/constants/colors.dart';
import 'package:leaderboard/constants/general_widget/horizontal_space.dart';
import 'package:leaderboard/constants/text_style.dart';
import 'package:sizer/sizer.dart';

class PersonScoreCard extends StatelessWidget {
  const PersonScoreCard({
    required this.isSelected,
    this.icon,
    this.text = "",
    this.score = "159",
    this.color,
    Key? key,
  }) : super(key: key);

  final String text;
  final String score;
  final Color? color;
  final IconData? icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
        color: isSelected
            ? appColors!.greyColor.withOpacity(0.7)
            : appColors!.greyColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(6.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 6.w, child: Center(child: Text(score.toString()))),
            Container(
              height: 10.h,
              width: 10.w,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/3c/03/0d/3c030da5986d141098f718ac3c121ba2.jpg"),
                      fit: BoxFit.cover),
                  color: appColors!.whiteColor,
                  shape: BoxShape.circle),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Text(
                  text,
                  maxLines: 1,
                  style: appTextStyles!.sp10(
                      context,
                      isSelected
                          ? appColors!.whiteColor
                          : appColors!.blackColor.withOpacity(0.8)),
                ),
              ),
            ),
            SizedBox(
              width: 18.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5.w,
                    child: Icon(
                      Icons.eject,
                      size: 15.sp,
                      color: appColors!.greenColor,
                    ),
                  ),
                  const HorizontalSpace(
                    width: 1.5,
                  ),
                  Expanded(
                      child: Text(
                    "122m",
                    maxLines: 1,
                    style: appTextStyles!.sp10(
                        context,
                        isSelected
                            ? appColors!.whiteColor
                            : appColors!.blackColor.withOpacity(0.8)),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
