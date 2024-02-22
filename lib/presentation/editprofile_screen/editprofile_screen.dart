import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_subtitle.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'controller/editprofile_controller.dart';
import 'models/cardlist_item_model.dart';
import 'widgets/cardlist_item_widget.dart';

class EditprofileScreen extends GetWidget<EditprofileController> {
  const EditprofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_information".tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      SizedBox(height: 11.v),
                      Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 20.v),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6,
                                    height: 60.adaptSize,
                                    width: 60.adaptSize,
                                    radius: BorderRadius.circular(10.h),
                                    margin: EdgeInsets.only(bottom: 33.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.h, bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtJeanPaul();
                                              },
                                              child: Text("lbl_jean_paul".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack90018)),
                                          SizedBox(height: 9.v),
                                          Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                  "msg_jpletemknow_gmail_com"
                                                      .tr,
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 7.v),
                                          Opacity(
                                              opacity: 0.5,
                                              child: SizedBox(
                                                  width: 185.h,
                                                  child: Text(
                                                      "msg_d_xx_abd_street".tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .bodyMedium)))
                                        ]))
                              ])),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_payment_method".tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      SizedBox(height: 18.v),
                      _buildCardList()
                    ])),
            bottomNavigationBar: _buildPayNow()));
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
        title: AppbarSubtitle(
            text: "lbl_payment".tr, margin: EdgeInsets.only(left: 96.h)));
  }

  /// Section Widget
  Widget _buildCardList() {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                  opacity: 0.3,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.0.v),
                      child: SizedBox(
                          width: 232.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.black900.withOpacity(0.46)))));
            },
            itemCount: controller
                .editprofileModelObj.value.cardlistItemList.value.length,
            itemBuilder: (context, index) {
              CardlistItemModel model = controller
                  .editprofileModelObj.value.cardlistItemList.value[index];
              return CardlistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildPayNow() {
    return CustomElevatedButton(
        text: "lbl_pay_now".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          navigatetoconfirm();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the profilefaqScreen when the action is triggered.
  onTapTxtJeanPaul() {
    Get.toNamed(
      AppRoutes.profilefaqScreen,
    );
  }

  /// Navigates to the confirmedScreen when the action is triggered.
  navigatetoconfirm() {
    Get.toNamed(
      AppRoutes.confirmedScreen,
    );
  }
}
