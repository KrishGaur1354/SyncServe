import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/confirmed_screen/models/confirmed_model.dart';

/// A controller class for the ConfirmedScreen.
///
/// This class manages the state of the ConfirmedScreen, including the
/// current confirmedModelObj
class ConfirmedController extends GetxController {
  Rx<ConfirmedModel> confirmedModelObj = ConfirmedModel().obs;
}
