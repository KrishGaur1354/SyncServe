// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [food1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Food1Model extends Equatable {
  Food1Model() {}

  Food1Model copyWith() {
    return Food1Model();
  }

  @override
  List<Object?> get props => [];
}
