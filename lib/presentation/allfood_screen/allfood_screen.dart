import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_title.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';

class AllfoodScreen extends StatelessWidget {
  const AllfoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: SizedBox(
                        height: 978.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 33.h, vertical: 22.v),
                                  decoration: AppDecoration.fillGray50.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            width: 265.h,
                                            margin: EdgeInsets.only(
                                                left: 45.h, right: 37.h),
                                            child: Text(
                                                "Found 6 results for “Continental”",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.headlineLarge)),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 17.h,
                                                                  bottom: 61.v),
                                                          child: Column(
                                                              children: [
                                                                _buildEggAndCucumber(
                                                                    context,
                                                                    dynamicText:
                                                                        "Veggie tomato mix",
                                                                    dynamicText1:
                                                                        "Rs. 100",
                                                                    navgigatetofood1:
                                                                        () {
                                                                  onTapEggAndCucumber(
                                                                      context);
                                                                }),
                                                                SizedBox(
                                                                    height:
                                                                        16.v),
                                                                SizedBox(
                                                                    height:
                                                                        252.v,
                                                                    width:
                                                                        156.h,
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Container(
                                                                                  padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                                                                                  decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    SizedBox(height: 79.v),
                                                                                    SizedBox(
                                                                                        height: 49.v,
                                                                                        width: 103.h,
                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                          Align(alignment: Alignment.center, child: SizedBox(width: 103.h, child: Text("Fried chicken m.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.titleLarge!.copyWith(height: 1.01)))),
                                                                                          Align(alignment: Alignment.center, child: SizedBox(width: 103.h, child: Text("Fried chicken m.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.titleLarge!.copyWith(height: 1.01))))
                                                                                        ])),
                                                                                    SizedBox(height: 5.v),
                                                                                    Padding(padding: EdgeInsets.only(left: 20.h), child: Text("Rs. 180", style: CustomTextStyles.titleLargePrimary23))
                                                                                  ]))),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgImage21,
                                                                              height: 128.adaptSize,
                                                                              width: 128.adaptSize,
                                                                              radius: BorderRadius.circular(64.h),
                                                                              alignment: Alignment.topCenter)
                                                                        ]))
                                                              ]))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 17.h,
                                                                  top: 54.v),
                                                          child:
                                                              Column(children: [
                                                            _buildEggAndCucumber(
                                                                context,
                                                                dynamicText:
                                                                    "Egg and cucmber...",
                                                                dynamicText1:
                                                                    "Rs. 110",
                                                                navgigatetofood1:
                                                                    () {
                                                              navgigatetofood1(
                                                                  context);
                                                            }),
                                                            SizedBox(
                                                                height: 23.v),
                                                            _buildEggAndCucumber(
                                                                context,
                                                                dynamicText:
                                                                    "Thai egg curry w/ rice",
                                                                dynamicText1:
                                                                    "Rs. 200")
                                                          ])))
                                                ])),
                                        SizedBox(height: 93.v)
                                      ]))),
                          Padding(
                              padding: EdgeInsets.only(right: 33.h),
                              child: _buildEggAndCucumber(context,
                                  dynamicText: "Egg and cucmber...",
                                  dynamicText1: "N1,900")),
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 34.h, bottom: 61.v),
                              child: _buildEggAndCucumber(context,
                                  dynamicText: "Veggie tomato mix",
                                  dynamicText1: "N1,900"))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 42.h, top: 17.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(children: [
              AppbarTitle(
                  text: "Continental", margin: EdgeInsets.only(top: 4.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: SizedBox(
                      height: 26.v,
                      child: VerticalDivider(width: 1.h, thickness: 1.v)))
            ])));
  }

  /// Common widget
  Widget _buildEggAndCucumber(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    Function? navgigatetofood1,
  }) {
    return GestureDetector(
        onTap: () {
          navgigatetofood1!.call();
        },
        child: SizedBox(
            height: 252.v,
            width: 156.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.h, vertical: 24.v),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 79.v),
                            SizedBox(
                                width: 97.h,
                                child: Text(dynamicText,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleLarge!.copyWith(
                                        color: appTheme.black900,
                                        height: 1.01))),
                            SizedBox(height: 5.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text(dynamicText1,
                                    style: CustomTextStyles.titleLargePrimary23
                                        .copyWith(
                                            color: theme.colorScheme.primary)))
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgImage22,
                  height: 128.adaptSize,
                  width: 128.adaptSize,
                  radius: BorderRadius.circular(64.h),
                  alignment: Alignment.topCenter)
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone11ProMaxFourScreen when the action is triggered.
  onTapEggAndCucumber(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxFourScreen);
  }

  /// Navigates to the iphone11ProMaxFourScreen when the action is triggered.
  navgigatetofood1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone11ProMaxFourScreen);
  }
}
