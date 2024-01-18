import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_four_screen/models/iphone_11_pro_max_four_model.dart';
import '../models/eightyone_item_model.dart';

/// A provider class for the Iphone11ProMaxFourScreen.
///
/// This provider manages the state of the Iphone11ProMaxFourScreen, including the
/// current iphone11ProMaxFourModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourProvider extends ChangeNotifier {
  Iphone11ProMaxFourModel iphone11ProMaxFourModelObj =
      Iphone11ProMaxFourModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
