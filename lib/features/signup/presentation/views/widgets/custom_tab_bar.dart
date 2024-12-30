import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // give the tab bar a height [can change hheight to preferred height]
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsApp.primaryColor, width: 2),
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(
                20.0,
              ),
              color: ColorsApp.primaryColor,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: ColorsApp.primaryColor,
            unselectedLabelStyle:
                AppStyles.styleBold16.copyWith(color: Colors.white),
            labelStyle: AppStyles.styleBold16,

            tabs: [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Student',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Instructor',
              ),
            ],

            indicatorSize: TabBarIndicatorSize.tab,

            // overlayColor: Colors.amber,
            indicatorColor: Colors.lightBlueAccent,
          ),
        ),
      ],
    );
  }
}
