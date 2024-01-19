import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10004,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildStackView(context),
                      SizedBox(
                          width: 184.h,
                          child: Divider(
                              color: theme.colorScheme.primary, indent: 50.h)),
                      SizedBox(height: 62.v),
                      Opacity(
                          opacity: 0.4,
                          child: Padding(
                              padding: EdgeInsets.only(left: 50.h),
                              child: Text("Email address",
                                  style: CustomTextStyles.titleSmallBlack900))),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 50.h),
                          child: Text("kriti1298@gmail.com",
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(indent: 50.h, endIndent: 50.h)),
                      SizedBox(height: 46.v),
                      Opacity(
                          opacity: 0.4,
                          child: Padding(
                              padding: EdgeInsets.only(left: 50.h),
                              child: Text("Password",
                                  style: CustomTextStyles.titleSmallBlack900))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 50.h),
                          child: Text("* * * * * * * * ",
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(indent: 50.h, endIndent: 50.h)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 50.h),
                          child: Text("Forgot passcode?",
                              style: CustomTextStyles.titleMediumPrimary)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildLoginButton(context)));
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
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
                    Text("Login", style: theme.textTheme.titleMedium),
                    Text("Sign-up", style: theme.textTheme.titleMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Navigates to the allfoodScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.allfoodScreen);
  }
}