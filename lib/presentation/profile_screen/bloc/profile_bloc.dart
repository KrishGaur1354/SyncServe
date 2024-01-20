import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:syncserve_v1/presentation/profile_screen/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        lastNameController: TextEditingController(),
        mobileNoController: TextEditingController()));
  }
}
