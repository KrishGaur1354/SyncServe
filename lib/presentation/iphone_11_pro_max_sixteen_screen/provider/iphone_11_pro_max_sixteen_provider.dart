import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_sixteen_screen/models/iphone_11_pro_max_sixteen_model.dart';

/// A provider class for the Iphone11ProMaxSixteenScreen.
///
/// This provider manages the state of the Iphone11ProMaxSixteenScreen, including the
/// current iphone11ProMaxSixteenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSixteenProvider extends ChangeNotifier {
  Iphone11ProMaxSixteenModel iphone11ProMaxSixteenModelObj =
      Iphone11ProMaxSixteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
