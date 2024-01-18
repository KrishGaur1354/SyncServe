import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/my_rewards_screen/models/my_rewards_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the MyRewardsScreen.
///
/// This provider manages the state of the MyRewardsScreen, including the
/// current myRewardsModelObj

// ignore_for_file: must_be_immutable
class MyRewardsProvider extends ChangeNotifier {
  MyRewardsModel myRewardsModelObj = MyRewardsModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
