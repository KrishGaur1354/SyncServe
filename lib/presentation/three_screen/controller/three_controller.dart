import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/three_screen/models/three_model.dart';

/// A controller class for the ThreeScreen.
///
/// This class manages the state of the ThreeScreen, including the
/// current threeModelObj
class ThreeController extends GetxController {
  Rx<ThreeModel> threeModelObj = ThreeModel().obs;
}
