import '../controller/orders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrdersScreen.
///
/// This class ensures that the OrdersController is created when the
/// OrdersScreen is first loaded.
class OrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersController());
  }
}
