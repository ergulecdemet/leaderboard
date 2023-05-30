import 'package:flutter/material.dart';
import 'package:leaderboard/constants/colors.dart';
import 'package:leaderboard/constants/general_widget/horizontal_space.dart';
import 'package:leaderboard/constants/general_widget/vertical_space.dart';
import 'package:leaderboard/constants/text_style.dart';
import 'package:leaderboard/screen/leaderboard_screen/widgets/person_score_card.dart';
import 'package:leaderboard/screen/leaderboard_screen/widgets/top_score_card.dart';
import 'package:sizer/sizer.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  int _selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const TopScoreCard(),
              const VertivalSpace(height: 2),
              SizedBox(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    child: InkWell(
                      onTap: () {
                        if (_selectedItem == index) {
                          _selectedItem = -1;
                        } else {
                          _selectedItem = index;
                        }
                        setState(() {});
                      },
                      child: PersonScoreCard(
                        isSelected: _selectedItem == index,
                        text: "Loregtdtyyjydtjytuuytkjfukgtrhtrrtrtyh",
                        score: "$index",
                      ),
                    ),
                  );
                },
              )),
              VertivalSpace(height: 1.h)
            ],
          ),
        ),
        Positioned(
          bottom: 2.h,
          left: 4.w,
          right: 4.w,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(appColors!.blueColor)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.share),
                const HorizontalSpace(width: 5),
                Text(
                  "Share",
                  style: appTextStyles!
                      .sp10(context, appColors!.whiteColor, FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
