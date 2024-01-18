import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.dynamicProperty2,
    this.dynamicProperty3,
    this.id,
  }) {
    dynamicProperty2 =
        dynamicProperty2 ?? ImageConstant.imgBiCreditCard2FrontFill;
    dynamicProperty3 = dynamicProperty3 ?? "Card";
    id = id ?? "";
  }

  String? dynamicProperty2;

  String? dynamicProperty3;

  String? id;
}
