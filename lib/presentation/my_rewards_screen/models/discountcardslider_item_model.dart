import '../../../core/app_export.dart';

/// This class is used in the [discountcardslider_item_widget] screen.
class DiscountcardsliderItemModel {
  DiscountcardsliderItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
