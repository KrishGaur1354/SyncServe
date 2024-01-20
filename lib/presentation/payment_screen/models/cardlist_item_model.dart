import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.creditCardIcon,
    this.cardText,
    this.id,
  }) {
    creditCardIcon = creditCardIcon ?? ImageConstant.imgBiCreditCard2FrontFill;
    cardText = cardText ?? "Card";
    id = id ?? "";
  }

  String? creditCardIcon;

  String? cardText;

  String? id;
}
