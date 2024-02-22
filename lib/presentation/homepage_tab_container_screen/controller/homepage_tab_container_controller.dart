import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/homepage_tab_container_screen/models/homepage_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomepageTabContainerScreen.
///
/// This class manages the state of the HomepageTabContainerScreen, including the
/// current homepageTabContainerModelObj
class HomepageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<HomepageTabContainerModel> homepageTabContainerModelObj =
      HomepageTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
