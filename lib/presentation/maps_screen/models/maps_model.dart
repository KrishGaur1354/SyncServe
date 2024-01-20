// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'slider_item_model.dart';

/// This class defines the variables used in the [maps_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapsModel extends Equatable {
  MapsModel({this.sliderItemList = const []}) {}

  List<SliderItemModel> sliderItemList;

  MapsModel copyWith({List<SliderItemModel>? sliderItemList}) {
    return MapsModel(
      sliderItemList: sliderItemList ?? this.sliderItemList,
    );
  }

  @override
  List<Object?> get props => [sliderItemList];
}
