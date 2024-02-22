import '../controller/set_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetLocationScreen.
///
/// This class ensures that the SetLocationController is created when the
/// SetLocationScreen is first loaded.
class SetLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetLocationController());
  }
}
