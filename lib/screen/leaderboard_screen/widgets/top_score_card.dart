import 'package:flutter/material.dart';
import 'package:leaderboard/constants/colors.dart';
import 'package:leaderboard/constants/image_path.dart';
import 'package:leaderboard/constants/text_style.dart';
import 'package:leaderboard/screen/leaderboard_screen/widgets/custom_circle_container.dart';
import 'package:sizer/sizer.dart';

class TopScoreCard extends StatelessWidget {
  const TopScoreCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(imagePath!.partyPng))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CustomCircleAvatar(
          style: appTextStyles!.sp8(context, appColors!.whiteColor),
          color: appColors!.orangeAccentColor,
          radius: 40.sp,
          text: "2",
          name: "Courtney Henry\n15521m",
        ),
        CustomCircleAvatar(
          style: appTextStyles!.sp12(context, appColors!.whiteColor),
          color: appColors!.blueColor,
          radius: 60.sp,
          text: "1",
          name: "Courtney Henry\n15521m",
          child: Positioned(
            top: -4.h,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                imagePath!.crownPng,
                height: 6.h,
              ),
            ),
          ),
        ),
        CustomCircleAvatar(
          style: appTextStyles!.sp8(context, appColors!.whiteColor),
          color: appColors!.pinkColor,
          radius: 40.sp,
          text: "3",
          name: "Courtney Henry\n15521m",
        ),
      ]),
    );
  }
}
