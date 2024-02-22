import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'controller/foodmain_controller.dart';

class FoodmainScreen extends GetWidget<FoodmainController> {
  const FoodmainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10001,
            appBar: _buildAppBar(),
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
                              style: CustomTextStyles.titleLargePrimary23)),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_delivery_info".tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      SizedBox(height: 1.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 300.h,
                              margin: EdgeInsets.only(left: 20.h, right: 27.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_self_pickup_available2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff000000
                                            .copyWith(height: 1.39)),
                                    TextSpan(
                                        text: "msg_9_15_pm_to_9_32".tr,
                                        style:
                                            CustomTextStyles.bodyMediumffdd1313)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_return_policy".tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      SizedBox(height: 2.v),
                      Container(
                          width: 293.h,
                          margin: EdgeInsets.only(left: 20.h, right: 34.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_restaurant_now_offering2".tr,
                                    style: CustomTextStyles.bodyMediumff000000),
                                TextSpan(
                                    text: "lbl_65_less".tr,
                                    style: CustomTextStyles.bodyMediumff1a8600),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "msg_than_what_the_price".tr,
                                    style: CustomTextStyles.bodyMediumff000000),
                                TextSpan(
                                    text: "msg_5_hours_ago_all".tr,
                                    style: CustomTextStyles.bodyMediumff1d00d3)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildOrderNow()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHeartBlack900,
              margin: EdgeInsets.fromLTRB(54.h, 16.v, 54.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildOrderNow() {
    return CustomElevatedButton(
        text: "lbl_order_now".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          navigatetopaY();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the setLocationScreen when the action is triggered.
  navigatetopaY() {
    Get.toNamed(
      AppRoutes.setLocationScreen,
    );
  }
}
