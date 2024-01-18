import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
