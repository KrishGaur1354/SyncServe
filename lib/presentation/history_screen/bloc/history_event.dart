// ignore_for_file: must_be_immutable

part of 'history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///History widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryEvent extends Equatable {}

/// Event that is dispatched when the History widget is first created.
class HistoryInitialEvent extends HistoryEvent {
  @override
  List<Object?> get props => [];
}
