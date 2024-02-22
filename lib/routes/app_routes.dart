import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/history_screen/history_screen.dart';
import '../presentation/history_screen/binding/history_binding.dart';
import '../presentation/orders_screen/orders_screen.dart';
import '../presentation/orders_screen/binding/orders_binding.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/search_screen/binding/search_binding.dart';
import '../presentation/editprofile_screen/editprofile_screen.dart';
import '../presentation/editprofile_screen/binding/editprofile_binding.dart';
import '../presentation/foodmain_screen/foodmain_screen.dart';
import '../presentation/foodmain_screen/binding/foodmain_binding.dart';
import '../presentation/set_location_screen/set_location_screen.dart';
import '../presentation/set_location_screen/binding/set_location_binding.dart';
import '../presentation/three_screen/three_screen.dart';
import '../presentation/three_screen/binding/three_binding.dart';
import '../presentation/confirmed_screen/confirmed_screen.dart';
import '../presentation/confirmed_screen/binding/confirmed_binding.dart';
import '../presentation/my_rewards_screen/my_rewards_screen.dart';
import '../presentation/my_rewards_screen/binding/my_rewards_binding.dart';
import '../presentation/homepage_tab_container_screen/homepage_tab_container_screen.dart';
import '../presentation/homepage_tab_container_screen/binding/homepage_tab_container_binding.dart';
import '../presentation/profilefaq_screen/profilefaq_screen.dart';
import '../presentation/profilefaq_screen/binding/profilefaq_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String homepagePage = '/homepage_page';

  static const String historyScreen = '/history_screen';

  static const String ordersScreen = '/orders_screen';

  static const String searchScreen = '/search_screen';

  static const String editprofileScreen = '/editprofile_screen';

  static const String foodmainScreen = '/foodmain_screen';

  static const String setLocationScreen = '/set_location_screen';

  static const String threeScreen = '/three_screen';

  static const String confirmedScreen = '/confirmed_screen';

  static const String myRewardsScreen = '/my_rewards_screen';

  static const String homepageTabContainerScreen =
      '/homepage_tab_container_screen';

  static const String profilefaqScreen = '/profilefaq_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: ordersScreen,
      page: () => OrdersScreen(),
      bindings: [
        OrdersBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: editprofileScreen,
      page: () => EditprofileScreen(),
      bindings: [
        EditprofileBinding(),
      ],
    ),
    GetPage(
      name: foodmainScreen,
      page: () => FoodmainScreen(),
      bindings: [
        FoodmainBinding(),
      ],
    ),
    GetPage(
      name: setLocationScreen,
      page: () => SetLocationScreen(),
      bindings: [
        SetLocationBinding(),
      ],
    ),
    GetPage(
      name: threeScreen,
      page: () => ThreeScreen(),
      bindings: [
        ThreeBinding(),
      ],
    ),
    GetPage(
      name: confirmedScreen,
      page: () => ConfirmedScreen(),
      bindings: [
        ConfirmedBinding(),
      ],
    ),
    GetPage(
      name: myRewardsScreen,
      page: () => MyRewardsScreen(),
      bindings: [
        MyRewardsBinding(),
      ],
    ),
    GetPage(
      name: homepageTabContainerScreen,
      page: () => HomepageTabContainerScreen(),
      bindings: [
        HomepageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: profilefaqScreen,
      page: () => ProfilefaqScreen(),
      bindings: [
        ProfilefaqBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
