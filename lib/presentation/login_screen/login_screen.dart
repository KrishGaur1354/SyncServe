import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/core/utils/validation_functions.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';
import 'package:syncserve_v1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            resizeToAvoidBottomInset: false,
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
                                  _buildLoginSection(context),
                                  SizedBox(
                                      width: 184.h,
                                      child: Divider(indent: 50.h)),
                                  SizedBox(height: 39.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 51.h, right: 63.h),
                                      child: BlocSelector<LoginBloc, LoginState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.userNameController,
                                          builder:
                                              (context, userNameController) {
                                            return CustomTextFormField(
                                                controller: userNameController,
                                                hintText: "lbl_username"
                                                    .tr
                                                    .toUpperCase(),
                                                hintStyle: CustomTextStyles
                                                    .bodyMediumMontserratBlack900,
                                                alignment: Alignment.center,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        12.h, 13.v, 20.h, 12.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUser,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 45.v),
                                                validator: (value) {
                                                  if (!isText(value)) {
                                                    return "err_msg_please_enter_valid_text"
                                                        .tr;
                                                  }
                                                  return null;
                                                });
                                          })),
                                  SizedBox(height: 20.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 51.h, right: 63.h),
                                      child: BlocSelector<LoginBloc, LoginState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.passwordController,
                                          builder:
                                              (context, passwordController) {
                                            return CustomTextFormField(
                                                controller: passwordController,
                                                hintText: "lbl_password"
                                                    .tr
                                                    .toUpperCase(),
                                                hintStyle: CustomTextStyles
                                                    .bodyMediumMontserratBlack900,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                alignment: Alignment.center,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        12.h, 13.v, 19.h, 12.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgLock,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 45.v),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_password"
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                                obscureText: true);
                                          })),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 54.h),
                                      child: Text("msg_forgot_passcode".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimary)),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildLoginButtonSection(context)));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
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
                        decoration:
                            BoxDecoration(color: theme.colorScheme.onPrimary))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: 39.v,
                        width: 340.h,
                        margin: EdgeInsets.only(left: 18.h),
                        decoration:
                            BoxDecoration(color: theme.colorScheme.onPrimary))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 104.v,
                        width: 30.h,
                        decoration:
                            BoxDecoration(color: theme.colorScheme.onPrimary))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: 116.v,
                        width: 18.h,
                        margin: EdgeInsets.only(top: 7.v),
                        decoration:
                            BoxDecoration(color: theme.colorScheme.onPrimary)))
              ])),
          SizedBox(height: 88.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 76.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_login".tr, style: theme.textTheme.titleMedium),
                    Text("lbl_sign_up".tr, style: theme.textTheme.titleMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildLoginButtonSection(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          navitofood(context);
        });
  }

  /// Navigates to the searchScreen when the action is triggered.
  navitofood(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }
}
