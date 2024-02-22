import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:syncserve/widgets/app_bar/appbar_title.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_outlined_button.dart';
import 'controller/three_controller.dart';

class ThreeScreen extends GetWidget<ThreeController> {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1233,
                      height: 858.v,
                      width: 414.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 67.v),
                        _buildAppBar(),
                        SizedBox(height: 23.v),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 17.h),
                                child: Column(children: [
                                  _buildCard(),
                                  SizedBox(height: 22.v),
                                  _buildItem01(),
                                  Spacer(),
                                  _buildTotal()
                                ])))
                      ]))
                ])),
            bottomNavigationBar: _buildConfirmOrder()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 27.v,
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 36.h, bottom: 3.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_delivery_summary".tr),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_1_item".tr,
              margin: EdgeInsets.fromLTRB(32.h, 7.v, 32.h, 2.v))
        ]);
  }

  /// Section Widget
  Widget _buildCard() {
    return Container(
        margin: EdgeInsets.only(left: 13.h, right: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 6.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    width: 147.h,
                    child: Text("msg_thai_long_vogue_clothes".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.titleMediumOpenSansBluegray90002)),
                Padding(
                    padding: EdgeInsets.only(left: 121.h, bottom: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgClock,
                              height: 30.v,
                              width: 34.h),
                          SizedBox(height: 1.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_45_min".tr,
                                  style: theme.textTheme.labelLarge))
                        ]))
              ])),
          SizedBox(height: 11.v),
          Container(
              margin: EdgeInsets.only(right: 1.h),
              decoration: AppDecoration.outlineOnErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle536,
                    height: 68.v,
                    width: 120.h,
                    radius:
                        BorderRadius.horizontal(left: Radius.circular(12.h))),
                Padding(
                    padding:
                        EdgeInsets.only(left: 15.h, top: 12.v, bottom: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_jean_paul".tr,
                              style: CustomTextStyles.bodyLargeRobotoGray700),
                          SizedBox(height: 9.v),
                          Row(children: [
                            Container(
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 1.v),
                                decoration: AppDecoration.fillGray50,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgLinkedin,
                                    height: 12.v,
                                    width: 11.h,
                                    alignment: Alignment.center)),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("msg_ranikhet_new_delhi".tr,
                                    style: CustomTextStyles
                                        .bodySmallRobotoBluegray400))
                          ])
                        ]))
              ])),
          SizedBox(height: 5.v)
        ]));
  }

  /// Section Widget
  Widget _buildItem01() {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack9003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.img63ec96ccabdc78d312x337,
                  height: 35.v,
                  width: 36.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_paneer_tikka_masala3".tr,
                            style:
                                CustomTextStyles.bodyMediumRobotoBluegray90002),
                        SizedBox(height: 8.v),
                        Text("lbl_quantity_01".tr,
                            style: CustomTextStyles.bodySmallRobotoGray50001)
                      ])),
              CustomOutlinedButton(
                  width: 73.h,
                  text: "lbl_01".tr,
                  margin: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 9.v)),
              CustomOutlinedButton(
                  width: 73.h,
                  text: "lbl_rs_1002".tr,
                  margin: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 9.v))
            ]));
  }

  /// Section Widget
  Widget _buildTotal() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 71.v,
            width: 351.h,
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
            decoration: AppDecoration.outlineBlack9003
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 111.h),
                      child: SizedBox(
                          height: 47.v,
                          child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray400)))),
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_total_amount".tr,
                                  style: CustomTextStyles
                                      .titleMediumRobotoBluegray90002),
                              Text("msg_inclusive_of_all".tr,
                                  style: CustomTextStyles
                                      .bodySmallRobotoBluegray600)
                            ]),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 134.h, top: 3.v, bottom: 4.v),
                            child: Text("lbl_rs_120".tr,
                                style:
                                    CustomTextStyles.titleLargeRobotoPrimary))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildConfirmOrder() {
    return CustomElevatedButton(
        text: "lbl_confirm_order".tr,
        margin: EdgeInsets.only(left: 28.h, right: 26.h),
        onPressed: () {
          naviagyetopay();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the editprofileScreen when the action is triggered.
  naviagyetopay() {
    Get.toNamed(
      AppRoutes.editprofileScreen,
    );
  }
}
