// ignore_for_file: must_be_immutable

part of 'orders_bloc.dart';

/// Represents the state of Orders in the application.
class OrdersState extends Equatable {
  OrdersState({this.ordersModelObj});

  OrdersModel? ordersModelObj;

  @override
  List<Object?> get props => [
        ordersModelObj,
      ];
  OrdersState copyWith({OrdersModel? ordersModelObj}) {
    return OrdersState(
      ordersModelObj: ordersModelObj ?? this.ordersModelObj,
    );
  }
}
