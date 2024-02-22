import '../../../core/app_export.dart';

/// This class is used in the [homepage_item_widget] screen.
class HomepageItemModel {
  HomepageItemModel({
    this.veggieTomatoMix,
    this.rsCounter,
    this.veggietomatomix,
    this.id,
  }) {
    veggieTomatoMix = veggieTomatoMix ?? Rx("Veggie tomato mix");
    rsCounter = rsCounter ?? Rx("Rs. 100");
    veggietomatomix = veggietomatomix ?? Rx(ImageConstant.imgImage2);
    id = id ?? Rx("");
  }

  Rx<String>? veggieTomatoMix;

  Rx<String>? rsCounter;

  Rx<String>? veggietomatomix;

  Rx<String>? id;
}
