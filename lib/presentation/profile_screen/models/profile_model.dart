// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel extends Equatable {
  ProfileModel() {}

  ProfileModel copyWith() {
    return ProfileModel();
  }

  @override
  List<Object?> get props => [];
}
