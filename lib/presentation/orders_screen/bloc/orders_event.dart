// ignore_for_file: must_be_immutable

part of 'orders_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Orders widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrdersEvent extends Equatable {}

/// Event that is dispatched when the Orders widget is first created.
class OrdersInitialEvent extends OrdersEvent {
  @override
  List<Object?> get props => [];
}
