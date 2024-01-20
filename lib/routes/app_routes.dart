import 'package:flutter/material.dart';
import 'package:syncserve_v1/presentation/splash_screen/splash_screen.dart';
import 'package:syncserve_v1/presentation/login_screen/login_screen.dart';
import 'package:syncserve_v1/presentation/history_screen/history_screen.dart';
import 'package:syncserve_v1/presentation/orders_screen/orders_screen.dart';
import 'package:syncserve_v1/presentation/search_screen/search_screen.dart';
import 'package:syncserve_v1/presentation/payment_screen/payment_screen.dart';
import 'package:syncserve_v1/presentation/food1_screen/food1_screen.dart';
import 'package:syncserve_v1/presentation/maps_screen/maps_screen.dart';
import 'package:syncserve_v1/presentation/profile_screen/profile_screen.dart';
import 'package:syncserve_v1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String historyScreen = '/history_screen';

  static const String ordersScreen = '/orders_screen';

  static const String searchScreen = '/search_screen';

  static const String paymentScreen = '/payment_screen';

  static const String food1Screen = '/food1_screen';

  static const String mapsScreen = '/maps_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        historyScreen: HistoryScreen.builder,
        ordersScreen: OrdersScreen.builder,
        searchScreen: SearchScreen.builder,
        paymentScreen: PaymentScreen.builder,
        food1Screen: Food1Screen.builder,
        mapsScreen: MapsScreen.builder,
        profileScreen: ProfileScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
