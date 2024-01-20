import 'bloc/food1_bloc.dart';
import 'models/food1_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:syncserve_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';

class Food1Screen extends StatelessWidget {
  const Food1Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Food1Bloc>(
        create: (context) => Food1Bloc(Food1State(food1ModelObj: Food1Model()))
          ..add(Food1InitialEvent()),
        child: Food1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Food1Bloc, Food1State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 33.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.img63ec96ccabdc78d312x337,
                            height: 312.v,
                            width: 337.h,
                            margin: EdgeInsets.only(left: 11.h)),
                        SizedBox(height: 20.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("msg_paneer_tikka_masala2".tr,
                                style: theme.textTheme.headlineMedium)),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_rs_100".tr,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text("lbl_delivery_info".tr,
                                style: CustomTextStyles.titleMedium17)),
                        SizedBox(height: 1.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 300.h,
                                margin:
                                    EdgeInsets.only(left: 20.h, right: 27.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_self_pickup_available2".tr,
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(height: 1.39)),
                                      TextSpan(
                                          text: "msg_9_15_pm_to_9_32".tr,
                                          style: CustomTextStyles
                                              .bodyMediumffdd1313)
                                    ]),
                                    textAlign: TextAlign.left))),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text("lbl_return_policy".tr,
                                style: CustomTextStyles.titleMedium17)),
                        SizedBox(height: 2.v),
                        Container(
                            width: 293.h,
                            margin: EdgeInsets.only(left: 20.h, right: 34.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_restaurant_now_offering2".tr,
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text: "lbl_65_less".tr,
                                      style:
                                          CustomTextStyles.bodyMediumff1a8600),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "msg_than_what_the_price".tr,
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text: "msg_5_hours_ago_all".tr,
                                      style:
                                          CustomTextStyles.bodyMediumff1d00d3)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildOrderNow(context)));
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
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHeart,
              margin: EdgeInsets.fromLTRB(54.h, 16.v, 54.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildOrderNow(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_order_now".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          navitopay(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the paymentScreen when the action is triggered.
  navitopay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }
}
