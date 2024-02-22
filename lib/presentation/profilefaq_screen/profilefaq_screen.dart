import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/core/utils/validation_functions.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_text_form_field.dart';
import 'controller/profilefaq_controller.dart';

// ignore_for_file: must_be_immutable
class ProfilefaqScreen extends GetWidget<ProfilefaqController> {
  ProfilefaqScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 25.v),
                    child: Column(children: [
                      SizedBox(height: 29.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 5.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 41.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_my_profile".tr,
                                            style:
                                                theme.textTheme.displaySmall),
                                        SizedBox(height: 38.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 22.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "msg_personal_details".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack90018),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 4.v),
                                                      child: Text(
                                                          "lbl_change".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimary))
                                                ])),
                                        SizedBox(height: 8.v),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.h,
                                                vertical: 18.v),
                                            decoration: AppDecoration
                                                .outlineBlack9001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle6,
                                                      height: 100.v,
                                                      width: 91.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              10.h),
                                                      margin: EdgeInsets.only(
                                                          bottom: 61.v)),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              15.h,
                                                              8.v,
                                                              12.h,
                                                              8.v),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_fatima_lastname"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMediumBlack90018),
                                                            SizedBox(
                                                                height: 5.v),
                                                            CustomTextFormField(
                                                                width: 165.h,
                                                                controller:
                                                                    controller
                                                                        .lastNameController,
                                                                hintText:
                                                                    "msg_fatimahashmi18_gmail_com"
                                                                        .tr,
                                                                hintStyle: theme
                                                                    .textTheme
                                                                    .bodyMedium!,
                                                                textInputType:
                                                                    TextInputType
                                                                        .emailAddress,
                                                                validator:
                                                                    (value) {
                                                                  if (value ==
                                                                          null ||
                                                                      (!isValidEmail(
                                                                          value,
                                                                          isRequired:
                                                                              true))) {
                                                                    return "err_msg_please_enter_valid_email"
                                                                        .tr;
                                                                  }
                                                                  return null;
                                                                },
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        horizontal: 2
                                                                            .h),
                                                                borderDecoration:
                                                                    TextFormFieldStyleHelper
                                                                        .underLineBlack),
                                                            SizedBox(
                                                                height: 7.v),
                                                            CustomTextFormField(
                                                                width: 165.h,
                                                                controller:
                                                                    controller
                                                                        .mobileNoController,
                                                                hintText:
                                                                    "lbl_91_9011039271"
                                                                        .tr,
                                                                hintStyle:
                                                                    CustomTextStyles
                                                                        .bodyMedium15,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done,
                                                                borderDecoration:
                                                                    TextFormFieldStyleHelper
                                                                        .underLineBlack),
                                                            SizedBox(
                                                                height: 8.v),
                                                            Opacity(
                                                                opacity: 0.5,
                                                                child: SizedBox(
                                                                    width:
                                                                        148.h,
                                                                    child: Text(
                                                                        "msg_d_xx_abd_street"
                                                                            .tr,
                                                                        maxLines:
                                                                            3,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyMedium)))
                                                          ]))
                                                ])),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(
                                                history: "lbl_orders".tr,
                                                onTapHistory: () {
                                                  onTapHistory();
                                                })),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(
                                                history: "lbl_history".tr,
                                                onTapHistory: () {
                                                  onTapHistory1();
                                                })),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(
                                                history: "lbl_faqs".tr)),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(
                                                history:
                                                    "lbl_help_feedback".tr))
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildUpdate()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(50.h, 22.v, 358.h, 22.v),
            onTap: () {
              onTapVector();
            }));
  }

  /// Section Widget
  Widget _buildUpdate() {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 25.v));
  }

  /// Common widget
  Widget _buildHistory({
    required String history,
    Function? onTapHistory,
  }) {
    return GestureDetector(
        onTap: () {
          onTapHistory!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: Text(history,
                          style: CustomTextStyles.titleMediumBlack90018
                              .copyWith(color: appTheme.black900))),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 3.v, right: 4.h))
                ])));
  }

  /// Navigates to the previous screen.
  onTapVector() {
    Get.back();
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapHistory() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }

  /// Navigates to the ordersScreen when the action is triggered.
  onTapHistory1() {
    Get.toNamed(
      AppRoutes.ordersScreen,
    );
  }
}
