import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardlist_item_model.dart';
import 'package:syncserve_v1/presentation/payment_screen/models/payment_model.dart';
part 'payment_event.dart';
part 'payment_state.dart';

/// A bloc that manages the state of a Payment according to the event that is dispatched to it.
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc(PaymentState initialState) : super(initialState) {
    on<PaymentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentInitialEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(state.copyWith(
        paymentModelObj: state.paymentModelObj
            ?.copyWith(cardlistItemList: fillCardlistItemList())));
  }

  List<CardlistItemModel> fillCardlistItemList() {
    return [
      CardlistItemModel(
          creditCardIcon: ImageConstant.imgBiCreditCard2FrontFill,
          cardText: "Card"),
      CardlistItemModel(
          creditCardIcon: ImageConstant.imgDashiconsBank,
          cardText: "Net Banking"),
      CardlistItemModel(cardText: "UPI")
    ];
  }
}
