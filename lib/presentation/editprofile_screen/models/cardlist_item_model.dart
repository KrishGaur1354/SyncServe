import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.dynamicProperty2,
    this.dynamicProperty3,
    this.id,
  }) {
    dynamicProperty2 =
        dynamicProperty2 ?? Rx(ImageConstant.imgBiCreditCard2FrontFill);
    dynamicProperty3 = dynamicProperty3 ?? Rx("Card");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicProperty2;

  Rx<String>? dynamicProperty3;

  Rx<String>? id;
}
