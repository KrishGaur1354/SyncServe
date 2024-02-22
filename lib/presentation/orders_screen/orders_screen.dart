import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'controller/orders_controller.dart';

class OrdersScreen extends GetWidget<OrdersController> {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
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
            bottomNavigationBar: _buildStartOrdering()));
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
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_orders".tr));
  }

  /// Section Widget
  Widget _buildStartOrdering() {
    return CustomElevatedButton(
        text: "lbl_start_ordering".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          onTapStartOrdering();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homepageTabContainerScreen when the action is triggered.
  onTapStartOrdering() {
    Get.toNamed(
      AppRoutes.homepageTabContainerScreen,
    );
  }
}
