import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft_app_clone/model/my_bottomBar.dart';
import 'package:nft_app_clone/model/my_tabbar.dart';
import 'package:nft_app_clone/view/theme/glass_box.dart';

import '../model/my_appbar.dart';
import '../model/tabs/recent_tab.dart';
import '../model/tabs/top_tab.dart';
import '../model/tabs/trending_tab.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _searchButton() {}

  var _currentBottomIndex = 0;
  void _bottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  List tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              MyAppBar(
                title: "Explore \nCollections",
                onTap: _searchButton,
              ),
              SizedBox(height: 600.h, child: MyTabBar(tabOptions: tabOptions))
            ],
          ),
        ),
        bottomNavigationBar: GlassBox(
            child: MyBottomBar(
                index: _currentBottomIndex, onTap: _bottomIndexChange)),
      ),
    );
  }
}
