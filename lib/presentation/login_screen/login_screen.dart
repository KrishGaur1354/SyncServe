import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/core/utils/validation_functions.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray10005,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLoginScreen(),
                                  SizedBox(
                                      width: 184.h,
                                      child: Divider(indent: 50.h)),
                                  SizedBox(height: 39.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 51.h, right: 63.h),
                                      child: CustomTextFormField(
                                          controller:
                                              controller.userNameController,
                                          hintText:
                                              "lbl_username".tr.toUpperCase(),
                                          alignment: Alignment.center,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  12.h, 13.v, 20.h, 12.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUserBlack900,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 45.v),
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "err_msg_please_enter_valid_text"
                                                  .tr;
                                            }
                                            return null;
                                          })),
                                  SizedBox(height: 20.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 51.h, right: 63.h),
                                      child: CustomTextFormField(
                                          controller:
                                              controller.passwordController,
                                          hintText:
                                              "lbl_password".tr.toUpperCase(),
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          alignment: Alignment.center,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  12.h, 13.v, 19.h, 12.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgLock,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 45.v),
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          obscureText: true)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 54.h),
                                      child: Text("msg_forgot_passcode".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimary)),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildLogin()));
  }

  /// Section Widget
  Widget _buildLoginScreen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 91.v),
          SizedBox(
              height: 140.v,
              width: 388.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage13,
                    height: 97.v,
                    width: 357.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 17.v)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 27.v,
                        width: 387.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.onPrimary.withOpacity(1)))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: 39.v,
                        width: 340.h,
                        margin: EdgeInsets.only(left: 18.h),
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.onPrimary.withOpacity(1)))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 104.v,
                        width: 30.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.onPrimary.withOpacity(1)))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: 116.v,
                        width: 18.h,
                        margin: EdgeInsets.only(top: 7.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1))))
              ])),
          SizedBox(height: 88.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 76.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_login".tr,
                        style: CustomTextStyles.titleMediumBlack90018),
                    Text("lbl_sign_up".tr,
                        style: CustomTextStyles.titleMediumBlack90018)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildLogin() {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          onTapLogin();
        });
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }
}
