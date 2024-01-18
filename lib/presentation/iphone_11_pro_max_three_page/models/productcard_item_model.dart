import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.title,
    this.price,
    this.image,
    this.id,
  }) {
    title = title ?? "Veggie tomato mix";
    price = price ?? "Rs. 100";
    image = image ?? ImageConstant.imgImage2;
    id = id ?? "";
  }

  String? title;

  String? price;

  String? image;

  String? id;
}
