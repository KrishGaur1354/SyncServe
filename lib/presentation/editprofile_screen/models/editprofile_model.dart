import '../../../core/app_export.dart';
import 'cardlist_item_model.dart';

/// This class defines the variables used in the [editprofile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditprofileModel {
  Rx<List<CardlistItemModel>> cardlistItemList = Rx([
    CardlistItemModel(
        dynamicProperty2: ImageConstant.imgBiCreditCard2FrontFill.obs,
        dynamicProperty3: "Card".obs),
    CardlistItemModel(
        dynamicProperty2: ImageConstant.imgDashiconsBank.obs,
        dynamicProperty3: "Net Banking".obs),
    CardlistItemModel(dynamicProperty3: "UPI".obs)
  ]);
}
