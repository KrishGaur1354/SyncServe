import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/set_location_screen/models/set_location_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SetLocationScreen.
///
/// This class manages the state of the SetLocationScreen, including the
/// current setLocationModelObj
class SetLocationController extends GetxController {
  TextEditingController locationController = TextEditingController();

  Rx<SetLocationModel> setLocationModelObj = SetLocationModel().obs;

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
  }
}
