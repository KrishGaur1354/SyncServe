import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_fifteen_screen/models/iphone_11_pro_max_fifteen_model.dart';

/// A provider class for the Iphone11ProMaxFifteenScreen.
///
/// This provider manages the state of the Iphone11ProMaxFifteenScreen, including the
/// current iphone11ProMaxFifteenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFifteenProvider extends ChangeNotifier {
  Iphone11ProMaxFifteenModel iphone11ProMaxFifteenModelObj =
      Iphone11ProMaxFifteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
