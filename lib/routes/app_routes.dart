import 'package:flutter/material.dart';
import 'package:syncserve/presentation/main_screen/main_screen.dart';
import 'package:syncserve/presentation/login_screen/login_screen.dart';
import 'package:syncserve/presentation/deals_screen/deals_screen.dart';
import 'package:syncserve/presentation/allfood_screen/allfood_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_four_screen/iphone_11_pro_max_four_screen.dart';
import 'package:syncserve/presentation/my_rewards_screen/my_rewards_screen.dart';
import 'package:syncserve/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String mainScreen = '/main_screen';

  static const String loginScreen = '/login_screen';

  static const String dealsScreen = '/deals_screen';

  static const String allfoodScreen = '/allfood_screen';

  static const String iphone11ProMaxFourScreen =
      '/iphone_11_pro_max_four_screen';

  static const String myRewardsScreen = '/my_rewards_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    mainScreen: (context) => MainScreen(),
    loginScreen: (context) => LoginScreen(),
    dealsScreen: (context) => DealsScreen(),
    allfoodScreen: (context) => AllfoodScreen(),
    iphone11ProMaxFourScreen: (context) => Iphone11ProMaxFourScreen(),
    myRewardsScreen: (context) => MyRewardsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
