import '../controller/three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThreeScreen.
///
/// This class ensures that the ThreeController is created when the
/// ThreeScreen is first loaded.
class ThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThreeController());
  }
}
