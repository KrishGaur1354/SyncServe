// ignore_for_file: must_be_immutable

part of 'payment_bloc.dart';

/// Represents the state of Payment in the application.
class PaymentState extends Equatable {
  PaymentState({this.paymentModelObj});

  PaymentModel? paymentModelObj;

  @override
  List<Object?> get props => [
        paymentModelObj,
      ];
  PaymentState copyWith({PaymentModel? paymentModelObj}) {
    return PaymentState(
      paymentModelObj: paymentModelObj ?? this.paymentModelObj,
    );
  }
}
