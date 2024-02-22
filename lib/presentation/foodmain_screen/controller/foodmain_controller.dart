import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/foodmain_screen/models/foodmain_model.dart';

/// A controller class for the FoodmainScreen.
///
/// This class manages the state of the FoodmainScreen, including the
/// current foodmainModelObj
class FoodmainController extends GetxController {
  Rx<FoodmainModel> foodmainModelObj = FoodmainModel().obs;
}
