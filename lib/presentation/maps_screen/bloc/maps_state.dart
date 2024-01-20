// ignore_for_file: must_be_immutable

part of 'maps_bloc.dart';

/// Represents the state of Maps in the application.
class MapsState extends Equatable {
  MapsState({
    this.addressEditTextController,
    this.priceEditTextController,
    this.languageEditTextController,
    this.sliderIndex = 0,
    this.mapsModelObj,
  });

  TextEditingController? addressEditTextController;

  TextEditingController? priceEditTextController;

  TextEditingController? languageEditTextController;

  MapsModel? mapsModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        addressEditTextController,
        priceEditTextController,
        languageEditTextController,
        sliderIndex,
        mapsModelObj,
      ];
  MapsState copyWith({
    TextEditingController? addressEditTextController,
    TextEditingController? priceEditTextController,
    TextEditingController? languageEditTextController,
    int? sliderIndex,
    MapsModel? mapsModelObj,
  }) {
    return MapsState(
      addressEditTextController:
          addressEditTextController ?? this.addressEditTextController,
      priceEditTextController:
          priceEditTextController ?? this.priceEditTextController,
      languageEditTextController:
          languageEditTextController ?? this.languageEditTextController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      mapsModelObj: mapsModelObj ?? this.mapsModelObj,
    );
  }
}
