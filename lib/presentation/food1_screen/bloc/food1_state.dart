// ignore_for_file: must_be_immutable

part of 'food1_bloc.dart';

/// Represents the state of Food1 in the application.
class Food1State extends Equatable {
  Food1State({this.food1ModelObj});

  Food1Model? food1ModelObj;

  @override
  List<Object?> get props => [
        food1ModelObj,
      ];
  Food1State copyWith({Food1Model? food1ModelObj}) {
    return Food1State(
      food1ModelObj: food1ModelObj ?? this.food1ModelObj,
    );
  }
}
