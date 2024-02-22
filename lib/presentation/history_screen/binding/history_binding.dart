import '../controller/history_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryScreen.
///
/// This class ensures that the HistoryController is created when the
/// HistoryScreen is first loaded.
class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController());
  }
}
