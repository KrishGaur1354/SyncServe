// ignore_for_file: must_be_immutable

part of 'maps_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Maps widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MapsEvent extends Equatable {}

/// Event that is dispatched when the Maps widget is first created.
class MapsInitialEvent extends MapsEvent {
  @override
  List<Object?> get props => [];
}
