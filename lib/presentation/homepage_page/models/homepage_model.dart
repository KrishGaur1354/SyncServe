import '../../../core/app_export.dart';
import 'homepage_item_model.dart';

/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel {
  Rx<List<HomepageItemModel>> homepageItemList = Rx([
    HomepageItemModel(
        veggieTomatoMix: "Veggie tomato mix".obs,
        rsCounter: "Rs. 100".obs,
        veggietomatomix: ImageConstant.imgImage2.obs),
    HomepageItemModel(
        veggieTomatoMix: "Spicy fish sauce".obs,
        rsCounter: "Rs. 1".obs,
        veggietomatomix: ImageConstant.imgImage2164x164.obs)
  ]);
}
