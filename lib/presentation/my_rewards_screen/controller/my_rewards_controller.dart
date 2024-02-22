import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/my_rewards_screen/models/my_rewards_model.dart';

/// A controller class for the MyRewardsScreen.
///
/// This class manages the state of the MyRewardsScreen, including the
/// current myRewardsModelObj
class MyRewardsController extends GetxController {
  Rx<MyRewardsModel> myRewardsModelObj = MyRewardsModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
