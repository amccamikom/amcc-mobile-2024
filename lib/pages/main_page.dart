import 'package:finli_app/pages/help_page.dart';
import 'package:finli_app/pages/home_page.dart';
import 'package:finli_app/pages/profile_page.dart';
import 'package:finli_app/pages/statistic_page.dart';
import 'package:finli_app/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  List<PersistentTabConfig> _tabs(BuildContext context) => [
    PersistentTabConfig(
      screen: HomePage(),
      item: ItemConfig(
        icon: Icon(Icons.home),
        title: 'Home',
        iconSize: 32,
        activeColorSecondary: AppColors.white,
        activeForegroundColor: AppColors.white,
        inactiveBackgroundColor: AppColors.white,
        inactiveForegroundColor: AppColors.white,
      ),
    ),
    PersistentTabConfig(
      screen: StatisticPage(),
      item: ItemConfig(
        icon: Icon(Icons.insert_chart_rounded),
        title: 'Statistic',
        iconSize: 32,
        activeColorSecondary: AppColors.white,
        activeForegroundColor: AppColors.white,
        inactiveBackgroundColor: AppColors.white,
        inactiveForegroundColor: AppColors.white,
      ),
    ),
    PersistentTabConfig.noScreen(
      item: ItemConfig(
        icon: Icon(Icons.add_rounded),
        iconSize: 36,
        activeForegroundColor: AppColors.white,

        inactiveForegroundColor: AppColors.blue,
      ),
      onPressed: (p0) {},
    ),
    PersistentTabConfig(
      screen: HelpPage(),
      item: ItemConfig(
        icon: Icon(Icons.help_center),
        title: 'Help',
        iconSize: 32,
        activeColorSecondary: AppColors.white,
        activeForegroundColor: AppColors.white,
        inactiveBackgroundColor: AppColors.white,
        inactiveForegroundColor: AppColors.white,
      ),
    ),
    PersistentTabConfig(
      screen: ProfilePage(),
      item: ItemConfig(
        icon: Icon(Icons.person),
        title: 'Profile',
        iconSize: 32,
        activeColorSecondary: AppColors.white,
        activeForegroundColor: AppColors.white,
        inactiveBackgroundColor: AppColors.white,
        inactiveForegroundColor: AppColors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
    navBarOverlap: NavBarOverlap.full(),
    tabs: _tabs(context),
    navBarBuilder:
        (navBarConfig) => Style13BottomNavBar(
          height: 70,
          middleItemSize: 74,
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
        ),
  );
}
