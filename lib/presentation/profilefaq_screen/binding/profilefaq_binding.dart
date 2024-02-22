import '../controller/profilefaq_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilefaqScreen.
///
/// This class ensures that the ProfilefaqController is created when the
/// ProfilefaqScreen is first loaded.
class ProfilefaqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilefaqController());
  }
}
