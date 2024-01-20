// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.lastNameController,
    this.mobileNoController,
    this.profileModelObj,
  });

  TextEditingController? lastNameController;

  TextEditingController? mobileNoController;

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [
        lastNameController,
        mobileNoController,
        profileModelObj,
      ];
  ProfileState copyWith({
    TextEditingController? lastNameController,
    TextEditingController? mobileNoController,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      lastNameController: lastNameController ?? this.lastNameController,
      mobileNoController: mobileNoController ?? this.mobileNoController,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
