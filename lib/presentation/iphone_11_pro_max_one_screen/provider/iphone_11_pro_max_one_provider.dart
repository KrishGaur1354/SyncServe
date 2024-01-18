import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_one_screen/models/iphone_11_pro_max_one_model.dart';

/// A provider class for the Iphone11ProMaxOneScreen.
///
/// This provider manages the state of the Iphone11ProMaxOneScreen, including the
/// current iphone11ProMaxOneModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxOneProvider extends ChangeNotifier {
  Iphone11ProMaxOneModel iphone11ProMaxOneModelObj = Iphone11ProMaxOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
