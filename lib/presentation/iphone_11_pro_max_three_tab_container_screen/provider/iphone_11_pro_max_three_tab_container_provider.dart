import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_three_tab_container_screen/models/iphone_11_pro_max_three_tab_container_model.dart';

/// A provider class for the Iphone11ProMaxThreeTabContainerScreen.
///
/// This provider manages the state of the Iphone11ProMaxThreeTabContainerScreen, including the
/// current iphone11ProMaxThreeTabContainerModelObj
class Iphone11ProMaxThreeTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  Iphone11ProMaxThreeTabContainerModel iphone11ProMaxThreeTabContainerModelObj =
      Iphone11ProMaxThreeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
