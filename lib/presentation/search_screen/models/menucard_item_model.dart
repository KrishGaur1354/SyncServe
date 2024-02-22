import '../../../core/app_export.dart';

/// This class is used in the [menucard_item_widget] screen.
class MenucardItemModel {
  MenucardItemModel({
    this.title,
    this.rsCounter,
    this.riceWEggsBeans,
    this.id,
  }) {
    title = title ?? Rx("Rice w/ Eggs \n& Beans");
    rsCounter = rsCounter ?? Rx("Rs. 110");
    riceWEggsBeans = riceWEggsBeans ?? Rx(ImageConstant.imgImage2128x128);
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? rsCounter;

  Rx<String>? riceWEggsBeans;

  Rx<String>? id;
}
