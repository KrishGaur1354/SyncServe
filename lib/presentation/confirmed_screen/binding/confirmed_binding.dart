import '../controller/confirmed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfirmedScreen.
///
/// This class ensures that the ConfirmedController is created when the
/// ConfirmedScreen is first loaded.
class ConfirmedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmedController());
  }
}
