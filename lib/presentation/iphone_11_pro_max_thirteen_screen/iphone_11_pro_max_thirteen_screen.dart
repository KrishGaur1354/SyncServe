import 'models/iphone_11_pro_max_thirteen_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/core/utils/validation_functions.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_text_form_field.dart';
import 'provider/iphone_11_pro_max_thirteen_provider.dart';

class Iphone11ProMaxThirteenScreen extends StatefulWidget {
  const Iphone11ProMaxThirteenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxThirteenScreenState createState() =>
      Iphone11ProMaxThirteenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxThirteenProvider(),
        child: Iphone11ProMaxThirteenScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThirteenScreenState
    extends State<Iphone11ProMaxThirteenScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
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
                                                .outlineBlack900
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
                                                            Selector<
                                                                    Iphone11ProMaxThirteenProvider,
                                                                    TextEditingController?>(
                                                                selector: (context,
                                                                        provider) =>
                                                                    provider
                                                                        .lastNameController,
                                                                builder: (context,
                                                                    lastNameController,
                                                                    child) {
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
                                                            Selector<
                                                                    Iphone11ProMaxThirteenProvider,
                                                                    TextEditingController?>(
                                                                selector: (context,
                                                                        provider) =>
                                                                    provider
                                                                        .mobileNoController,
                                                                builder: (context,
                                                                    mobileNoController,
                                                                    child) {
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
                                                onTapHistory: () {
                                              onTapHistory(context);
                                            })),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 16.h),
                                            child: _buildHistory(context,
                                                historyText: "lbl_history".tr,
                                                onTapHistory: () {
                                              onTapHistory1(context);
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
    Function? onTapHistory,
  }) {
    return GestureDetector(
        onTap: () {
          onTapHistory!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v),
            decoration: AppDecoration.outlineBlack900
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

  /// Navigates to the iphone11ProMaxFifteenScreen when the action is triggered.
  onTapHistory(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxFifteenScreen,
    );
  }

  /// Navigates to the iphone11ProMaxSixteenScreen when the action is triggered.
  onTapHistory1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxSixteenScreen,
    );
  }
}
