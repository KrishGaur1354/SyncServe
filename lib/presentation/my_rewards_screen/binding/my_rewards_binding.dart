import '../controller/my_rewards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyRewardsScreen.
///
/// This class ensures that the MyRewardsController is created when the
/// MyRewardsScreen is first loaded.
class MyRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyRewardsController());
  }
}
