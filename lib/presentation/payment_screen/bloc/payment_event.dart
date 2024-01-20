// ignore_for_file: must_be_immutable

part of 'payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Payment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentEvent extends Equatable {}

/// Event that is dispatched when the Payment widget is first created.
class PaymentInitialEvent extends PaymentEvent {
  @override
  List<Object?> get props => [];
}
