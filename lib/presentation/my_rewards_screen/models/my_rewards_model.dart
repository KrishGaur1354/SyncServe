import 'discountcardslider_item_model.dart';
import '../../../core/app_export.dart';
import 'contentlist_item_model.dart';

/// This class defines the variables used in the [my_rewards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyRewardsModel {
  Rx<List<DiscountcardsliderItemModel>> discountcardsliderItemList =
      Rx(List.generate(3, (index) => DiscountcardsliderItemModel()));

  Rx<List<ContentlistItemModel>> contentlistItemList = Rx([
    ContentlistItemModel(
        titleText: "Refer a friend".obs,
        detailsText: "Share your promo code with a friend".obs),
    ContentlistItemModel(
        titleText: "3 for 1".obs,
        detailsText: "Buy 3 dishes and get 1 for free".obs),
    ContentlistItemModel(
        titleText: "240 points".obs,
        detailsText: "Transform your points in real INR".obs)
  ]);
}
