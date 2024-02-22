import '../controller/editprofile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditprofileScreen.
///
/// This class ensures that the EditprofileController is created when the
/// EditprofileScreen is first loaded.
class EditprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditprofileController());
  }
}
