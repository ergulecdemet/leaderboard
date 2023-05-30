import 'package:flutter/material.dart';
import 'package:leaderboard/constants/colors.dart';
import 'package:leaderboard/constants/text_style.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.white,
      controller: _tabController,
      labelColor: Colors.black,
      unselectedLabelStyle:
          appTextStyles!.sp10(context, appColors!.greyColor, FontWeight.bold),
      labelStyle: appTextStyles!.sp20(
        context,
        appColors!.greyColor,
        FontWeight.w700,
      ),
      tabs: const [
        Tab(
          text: 'Today',
        ),
        Tab(
          text: 'Week',
        ),
        Tab(
          text: 'All Time',
        ),
      ],
    );
  }
}
