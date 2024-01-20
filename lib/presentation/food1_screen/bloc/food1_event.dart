// ignore_for_file: must_be_immutable

part of 'food1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Food1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Food1Event extends Equatable {}

/// Event that is dispatched when the Food1 widget is first created.
class Food1InitialEvent extends Food1Event {
  @override
  List<Object?> get props => [];
}
