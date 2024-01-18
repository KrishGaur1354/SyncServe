import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/iphone_11_pro_max_seventeen_screen/models/iphone_11_pro_max_seventeen_model.dart';
import '../models/slider_item_model.dart';

/// A provider class for the Iphone11ProMaxSeventeenScreen.
///
/// This provider manages the state of the Iphone11ProMaxSeventeenScreen, including the
/// current iphone11ProMaxSeventeenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSeventeenProvider extends ChangeNotifier {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  Iphone11ProMaxSeventeenModel iphone11ProMaxSeventeenModelObj =
      Iphone11ProMaxSeventeenModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
  }
}
