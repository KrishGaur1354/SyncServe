import '../controller/homepage_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageTabContainerScreen.
///
/// This class ensures that the HomepageTabContainerController is created when the
/// HomepageTabContainerScreen is first loaded.
class HomepageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageTabContainerController());
  }
}
