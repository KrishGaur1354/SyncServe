import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:syncserve_v1/presentation/food1_screen/models/food1_model.dart';
part 'food1_event.dart';
part 'food1_state.dart';

/// A bloc that manages the state of a Food1 according to the event that is dispatched to it.
class Food1Bloc extends Bloc<Food1Event, Food1State> {
  Food1Bloc(Food1State initialState) : super(initialState) {
    on<Food1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Food1InitialEvent event,
    Emitter<Food1State> emit,
  ) async {}
}
