import '../controller/foodmain_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FoodmainScreen.
///
/// This class ensures that the FoodmainController is created when the
/// FoodmainScreen is first loaded.
class FoodmainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodmainController());
  }
}
