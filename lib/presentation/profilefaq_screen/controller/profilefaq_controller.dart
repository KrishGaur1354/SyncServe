import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/profilefaq_screen/models/profilefaq_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilefaqScreen.
///
/// This class manages the state of the ProfilefaqScreen, including the
/// current profilefaqModelObj
class ProfilefaqController extends GetxController {
  TextEditingController lastNameController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  Rx<ProfilefaqModel> profilefaqModelObj = ProfilefaqModel().obs;

  @override
  void onClose() {
    super.onClose();
    lastNameController.dispose();
    mobileNoController.dispose();
  }
}
