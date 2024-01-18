import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_six_screen/models/iphone_11_pro_max_six_model.dart';
import '../models/cardlist_item_model.dart';

/// A provider class for the Iphone11ProMaxSixScreen.
///
/// This provider manages the state of the Iphone11ProMaxSixScreen, including the
/// current iphone11ProMaxSixModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSixProvider extends ChangeNotifier {
  Iphone11ProMaxSixModel iphone11ProMaxSixModelObj = Iphone11ProMaxSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
