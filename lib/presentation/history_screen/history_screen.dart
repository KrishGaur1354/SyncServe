import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'controller/history_controller.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key}) : super(key: key);

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
                      imagePath: ImageConstant.imgVectorTeal700,
                      height: 118.v,
                      width: 106.h),
                  SizedBox(height: 30.v),
                  Text("lbl_no_history_yet".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 3.v),
                  Opacity(
                      opacity: 0.57,
                      child: SizedBox(
                          width: 243.h,
                          child: Text("msg_your_order_history".tr,
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
            margin: EdgeInsets.only(left: 41.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_history".tr));
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
