import '../../../core/app_export.dart';

/// This class is used in the [stackgrid_item_widget] screen.
class StackgridItemModel {
  StackgridItemModel({
    this.text,
    this.image,
    this.id,
  }) {
    text = text ?? "Upto Demand";
    image = image ?? ImageConstant.imgImage2;
    id = id ?? "";
  }

  String? text;

  String? image;

  String? id;
}
