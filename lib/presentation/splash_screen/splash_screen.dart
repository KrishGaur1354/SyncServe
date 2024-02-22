import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 156.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Text("msg_budget_friendly".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 6.v),
                      SizedBox(
                          height: 622.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 213.h,
                                    margin: EdgeInsets.only(right: 11.h),
                                    child: Text("msg_waste_free_delights".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: theme.textTheme.displayMedium))),
                            CustomImageView(
                                imagePath: ImageConstant.imgPngwing1,
                                height: 491.v,
                                width: 320.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 19.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 180.v,
                                width: 221.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 29.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle4,
                                height: 64.v,
                                width: 244.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 11.v)),
                            CustomElevatedButton(
                                width: 297.h,
                                text: "lbl_get_started".tr,
                                margin: EdgeInsets.only(left: 51.h),
                                buttonStyle: CustomButtonStyles.outlineBlack,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumGreen900,
                                onPressed: () {
                                  navigatetologin();
                                },
                                alignment: Alignment.bottomLeft)
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(height: 90.v, actions: [
      AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup3,
          margin: EdgeInsets.symmetric(horizontal: 24.h))
    ]);
  }

  /// Navigates to the loginScreen when the action is triggered.
  navigatetologin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
