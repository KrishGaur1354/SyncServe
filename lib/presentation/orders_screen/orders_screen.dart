import 'bloc/orders_bloc.dart';
import 'models/orders_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:syncserve_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersBloc>(
        create: (context) =>
            OrdersBloc(OrdersState(ordersModelObj: OrdersModel()))
              ..add(OrdersInitialEvent()),
        child: OrdersScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 172.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 16.h)),
                    SizedBox(height: 41.v),
                    Text("lbl_no_orders_yet".tr,
                        style: theme.textTheme.headlineMedium),
                    SizedBox(height: 11.v),
                    Opacity(
                        opacity: 0.57,
                        child: SizedBox(
                            width: 181.h,
                            child: Text("msg_hit_the_button_down_below".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBlack900))),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildStartOrdering(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_orders".tr));
  }

  /// Section Widget
  Widget _buildStartOrdering(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_start_ordering".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
