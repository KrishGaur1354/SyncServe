import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slider_item_model.dart';
import 'package:syncserve_v1/presentation/maps_screen/models/maps_model.dart';
part 'maps_event.dart';
part 'maps_state.dart';

/// A bloc that manages the state of a Maps according to the event that is dispatched to it.
class MapsBloc extends Bloc<MapsEvent, MapsState> {
  MapsBloc(MapsState initialState) : super(initialState) {
    on<MapsInitialEvent>(_onInitialize);
  }

  List<SliderItemModel> fillSliderItemList() {
    return List.generate(1, (index) => SliderItemModel());
  }

  _onInitialize(
    MapsInitialEvent event,
    Emitter<MapsState> emit,
  ) async {
    emit(state.copyWith(
        addressEditTextController: TextEditingController(),
        priceEditTextController: TextEditingController(),
        languageEditTextController: TextEditingController(),
        sliderIndex: 0));
    emit(state.copyWith(
        mapsModelObj: state.mapsModelObj
            ?.copyWith(sliderItemList: fillSliderItemList())));
  }
}
