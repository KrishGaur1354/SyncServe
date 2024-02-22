import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/editprofile_screen/models/editprofile_model.dart';

/// A controller class for the EditprofileScreen.
///
/// This class manages the state of the EditprofileScreen, including the
/// current editprofileModelObj
class EditprofileController extends GetxController {
  Rx<EditprofileModel> editprofileModelObj = EditprofileModel().obs;
}
