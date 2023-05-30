import 'package:flutter/material.dart';
import 'package:leaderboard/constants/colors.dart';
import 'package:leaderboard/constants/text_style.dart';
import 'package:leaderboard/screen/leaderboard_screen/widgets/my_tabbar.dart';
import 'package:leaderboard/screen/leaderboard_screen/widgets/today_page.dart';

class LeaderboardScreen extends StatefulWidget {
  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3, vsync: this); // Sekme sayısını burada belirleyebilirsiniz
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors!.whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: appColors!.blueColor,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.3,
        title: Text(
          'Leaderboard',
          style: appTextStyles!
              .sp12(context, appColors!.greyColor, FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: appColors!.blueColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          MyTabBar(tabController: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // İlgili sekmelere ait içerik widget'larını buraya ekleyin
                TodayPage(),
                Center(child: Text('Week')),
                Center(child: Text('All Time')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
