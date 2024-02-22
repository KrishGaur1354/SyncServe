import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_icon_button.dart';
import 'controller/confirmed_controller.dart';

class ConfirmedScreen extends GetWidget<ConfirmedController> {
  const ConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 38.v),
                child: Column(children: [
                  SizedBox(height: 39.v),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      color: theme.colorScheme.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Container(
                          height: 547.v,
                          width: 375.h,
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 341.v,
                                    width: 265.h,
                                    margin:
                                        EdgeInsets.only(left: 40.h, top: 66.v),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 27.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 32.v),
                                                  decoration: AppDecoration
                                                      .outlineOnPrimaryContainer
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder25),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height:
                                                                70.adaptSize,
                                                            width: 70.adaptSize,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    19.h),
                                                            decoration:
                                                                IconButtonStyleHelper
                                                                    .fillBlueGray,
                                                            alignment: Alignment
                                                                .center,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUser)),
                                                        SizedBox(height: 15.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 16.v,
                                                                width: 112.h,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .blueGray200,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.h)))),
                                                        SizedBox(height: 20.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        36.h),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                      height:
                                                                          10.v,
                                                                      width:
                                                                          64.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .indigo50,
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.h))),
                                                                  Container(
                                                                      height:
                                                                          10.v,
                                                                      width:
                                                                          47.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .indigo50,
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.h)))
                                                                ])),
                                                        SizedBox(height: 6.v),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(7
                                                                              .h),
                                                                  decoration: AppDecoration
                                                                      .outlineBluegray30001
                                                                      .copyWith(
                                                                          borderRadius:
                                                                              BorderRadiusStyle
                                                                                  .roundedBorder10),
                                                                  child: Container(
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .blueGray50,
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.h)))),
                                                              Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(7
                                                                              .h),
                                                                  decoration: AppDecoration
                                                                      .outlineBluegray30001
                                                                      .copyWith(
                                                                          borderRadius:
                                                                              BorderRadiusStyle
                                                                                  .roundedBorder10),
                                                                  child: Container(
                                                                      height: 14
                                                                          .adaptSize,
                                                                      width: 14
                                                                          .adaptSize,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .blueGray50,
                                                                          borderRadius:
                                                                              BorderRadius.circular(5.h))))
                                                            ]),
                                                        SizedBox(height: 10.v),
                                                        Container(
                                                            height: 10.v,
                                                            width: 64.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .indigo50,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.h))),
                                                        SizedBox(height: 6.v),
                                                        Container(
                                                            width: 207.h,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    7.h),
                                                            decoration: AppDecoration
                                                                .outlineBluegray30001
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Container(
                                                                height: 14
                                                                    .adaptSize,
                                                                width: 14
                                                                    .adaptSize,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .blueGray50,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.h)))),
                                                        SizedBox(height: 22.v)
                                                      ]))),
                                          CustomIconButton(
                                              height: 60.adaptSize,
                                              width: 60.adaptSize,
                                              padding: EdgeInsets.all(14.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineBlueGrayF,
                                              alignment: Alignment.topLeft,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTickCircle))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 32.h, vertical: 129.v),
                                    decoration: AppDecoration
                                        .gradientWhiteAToWhiteA
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Spacer(),
                                          Text("msg_order_successfully".tr,
                                              style: CustomTextStyles
                                                  .titleLargeAveriaSerifLibreOnPrimaryContainer),
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                              width: 309.h,
                                              child: Text(
                                                  "msg_congratulation".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .bodyMediumABeeZeeBluegray30001
                                                      .copyWith(height: 1.80)))
                                        ])))
                          ]))),
                  Spacer()
                ])),
            bottomNavigationBar: _buildGoToHomePage()));
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
  Widget _buildGoToHomePage() {
    return Container(
        height: 56.v,
        width: 327.h,
        margin: EdgeInsets.only(left: 48.h, right: 39.h, bottom: 38.v),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: Text("lbl_start_ordering".tr,
                      style: theme.textTheme.titleMedium))),
          CustomElevatedButton(
              height: 56.v,
              width: 327.h,
              text: "lbl_go_to_homepage".tr,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
