import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/core/utils/validation_functions.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';
import 'package:syncserve_v1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                                                      style: theme.textTheme
                                                          .titleMedium),
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
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            SizedBox(
                                                                height: 5.v),
                                                            BlocSelector<
                                                                    ProfileBloc,
                                                                    ProfileState,
                                                                    TextEditingController?>(
                                                                selector: (state) =>
                                                                    state
                                                                        .lastNameController,
                                                                builder: (context,
                                                                    lastNameController) {
                                                                  return CustomTextFormField(
                                                                      width:
                                                                          165.h,
                                                                      controller:
                                                                          lastNameController,
                                                                      hintText: "msg_fatimahashmi18_gmail_com"
                                                                          .tr,
                                                                      hintStyle:
                                                                          CustomTextStyles
                                                                              .bodyMediumBlack90013,
                                                                      textInputType:
                                                                          TextInputType
                                                                              .emailAddress,
                                                                      validator:
                                                                          (value) {
                                                                        if (value ==
                                                                                null ||
                                                                            (!isValidEmail(value,
                                                                                isRequired: true))) {
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
                                                                              .underLineBlack1);
                                                                }),
                                                            SizedBox(
                                                                height: 7.v),
                                                            BlocSelector<
                                                                    ProfileBloc,
                                                                    ProfileState,
                                                                    TextEditingController?>(
                                                                selector: (state) =>
                                                                    state
                                                                        .mobileNoController,
                                                                builder: (context,
                                                                    mobileNoController) {
                                                                  return CustomTextFormField(
                                                                      width:
                                                                          165.h,
                                                                      controller:
                                                                          mobileNoController,
                                                                      hintText:
                                                                          "lbl_91_9011039271"
                                                                              .tr,
                                                                      hintStyle:
                                                                          CustomTextStyles
                                                                              .bodyMediumBlack900,
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .done,
                                                                      borderDecoration:
                                                                          TextFormFieldStyleHelper
                                                                              .underLineBlack1);
                                                                }),
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
                                                                        style: CustomTextStyles
                                                                            .bodyMediumBlack90013)))
                                                          ]))
                                                ])),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(context,
                                                historyText: "lbl_orders".tr,
                                                navitohistory: () {
                                              navitoorders(context);
                                            })),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(context,
                                                historyText: "lbl_history".tr,
                                                navitohistory: () {
                                              navitohistory(context);
                                            })),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(context,
                                                historyText: "lbl_faqs".tr)),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(context,
                                                historyText:
                                                    "lbl_help_feedback".tr))
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildUpdate(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(50.h, 22.v, 358.h, 22.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 25.v));
  }

  /// Common widget
  Widget _buildHistory(
    BuildContext context, {
    required String historyText,
    Function? navitohistory,
  }) {
    return GestureDetector(
        onTap: () {
          navitohistory!.call();
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
                      child: Text(historyText,
                          style: theme.textTheme.titleMedium!
                              .copyWith(color: appTheme.black900))),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 3.v, right: 4.h))
                ])));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the ordersScreen when the action is triggered.
  navitoorders(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ordersScreen,
    );
  }

  /// Navigates to the historyScreen when the action is triggered.
  navitohistory(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }
}
