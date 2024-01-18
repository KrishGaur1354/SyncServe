import 'package:flutter/material.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_one_screen/iphone_11_pro_max_one_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_two_screen/iphone_11_pro_max_two_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_three_tab_container_screen/iphone_11_pro_max_three_tab_container_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_fifteen_screen/iphone_11_pro_max_fifteen_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_sixteen_screen/iphone_11_pro_max_sixteen_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_five_screen/iphone_11_pro_max_five_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_six_screen/iphone_11_pro_max_six_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_four_screen/iphone_11_pro_max_four_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_seventeen_screen/iphone_11_pro_max_seventeen_screen.dart';
import 'package:syncserve/presentation/my_rewards_screen/my_rewards_screen.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_thirteen_screen/iphone_11_pro_max_thirteen_screen.dart';
import 'package:syncserve/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone11ProMaxOneScreen = '/iphone_11_pro_max_one_screen';

  static const String iphone11ProMaxTwoScreen = '/iphone_11_pro_max_two_screen';

  static const String iphone11ProMaxThreePage = '/iphone_11_pro_max_three_page';

  static const String iphone11ProMaxThreeTabContainerScreen =
      '/iphone_11_pro_max_three_tab_container_screen';

  static const String iphone11ProMaxFifteenScreen =
      '/iphone_11_pro_max_fifteen_screen';

  static const String iphone11ProMaxSixteenScreen =
      '/iphone_11_pro_max_sixteen_screen';

  static const String iphone11ProMaxFiveScreen =
      '/iphone_11_pro_max_five_screen';

  static const String iphone11ProMaxSixScreen = '/iphone_11_pro_max_six_screen';

  static const String iphone11ProMaxFourScreen =
      '/iphone_11_pro_max_four_screen';

  static const String iphone11ProMaxSeventeenScreen =
      '/iphone_11_pro_max_seventeen_screen';

  static const String myRewardsScreen = '/my_rewards_screen';

  static const String iphone11ProMaxThirteenScreen =
      '/iphone_11_pro_max_thirteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone11ProMaxOneScreen: Iphone11ProMaxOneScreen.builder,
        iphone11ProMaxTwoScreen: Iphone11ProMaxTwoScreen.builder,
        iphone11ProMaxThreeTabContainerScreen:
            Iphone11ProMaxThreeTabContainerScreen.builder,
        iphone11ProMaxFifteenScreen: Iphone11ProMaxFifteenScreen.builder,
        iphone11ProMaxSixteenScreen: Iphone11ProMaxSixteenScreen.builder,
        iphone11ProMaxFiveScreen: Iphone11ProMaxFiveScreen.builder,
        iphone11ProMaxSixScreen: Iphone11ProMaxSixScreen.builder,
        iphone11ProMaxFourScreen: Iphone11ProMaxFourScreen.builder,
        iphone11ProMaxSeventeenScreen: Iphone11ProMaxSeventeenScreen.builder,
        myRewardsScreen: MyRewardsScreen.builder,
        iphone11ProMaxThirteenScreen: Iphone11ProMaxThirteenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone11ProMaxOneScreen.builder
      };
}
