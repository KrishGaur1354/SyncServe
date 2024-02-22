import '../../../core/app_export.dart';

/// This class is used in the [contentlist_item_widget] screen.
class ContentlistItemModel {
  ContentlistItemModel({
    this.titleText,
    this.detailsText,
    this.id,
  }) {
    titleText = titleText ?? Rx("Refer a friend");
    detailsText = detailsText ?? Rx("Share your promo code with a friend");
    id = id ?? Rx("");
  }

  Rx<String>? titleText;

  Rx<String>? detailsText;

  Rx<String>? id;
}
