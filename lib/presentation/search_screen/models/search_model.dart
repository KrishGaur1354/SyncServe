import '../../../core/app_export.dart';
import 'menucard_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<MenucardItemModel>> menucardItemList = Rx([
    MenucardItemModel(
        title: "Rice w/ Eggs \n& Beans".obs,
        rsCounter: "Rs. 110".obs,
        riceWEggsBeans: ImageConstant.imgImage2128x128.obs),
    MenucardItemModel(
        title: "Paneer Tikka\nMasala".obs, rsCounter: "Rs. 100".obs),
    MenucardItemModel(
        title: "Thai egg curry w/ rice".obs,
        rsCounter: "Rs. 200".obs,
        riceWEggsBeans: ImageConstant.imgImage22.obs),
    MenucardItemModel(
        rsCounter: "Rs. 180".obs, riceWEggsBeans: ImageConstant.imgImage21.obs)
  ]);
}
