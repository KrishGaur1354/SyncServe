import '../my_rewards_screen/widgets/userprofile_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyRewardsScreen extends StatelessWidget {
  MyRewardsScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0.5),
                        end: Alignment(1, 0.5),
                        colors: [
                      appTheme.gray5001,
                      appTheme.gray10002,
                      appTheme.gray5001
                    ])),
                child: SizedBox(
                    width: 428.h,
                    child: SingleChildScrollView(
                        child: SizedBox(
                            height: 940.v,
                            width: 428.h,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 36.h, vertical: 77.v),
                                          decoration: AppDecoration.fillGray100,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeftBlack900,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      onTap: () {
                                                        onTapImgArrowLeft(
                                                            context);
                                                      }),
                                                  Container(
                                                      width: 94.h,
                                                      margin: EdgeInsets.only(
                                                          left: 107.h),
                                                      decoration: AppDecoration
                                                          .fillOnPrimary,
                                                      child: Text("My Rewards",
                                                          style: CustomTextStyles
                                                              .titleMediumMulishOnPrimary))
                                                ]),
                                                SizedBox(height: 73.v),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "Offers & Promotions",
                                                        style: theme.textTheme
                                                            .displaySmall)),
                                                SizedBox(height: 73.v)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 129.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                _buildUserProfile(context),
                                                SizedBox(height: 22.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 234.h),
                                                        child: Text(
                                                            "Get new rewards",
                                                            style: CustomTextStyles
                                                                .titleMediumMulishBluegray600))),
                                                SizedBox(height: 14.v),
                                                _buildReferAFriend(context),
                                                SizedBox(height: 16.v),
                                                _buildThreeForOne(context),
                                                SizedBox(height: 16.v),
                                                _buildPointsCounter(context)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 184.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              sliderIndex = index;
            }),
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return UserprofileItemWidget();
        });
  }

  /// Section Widget
  Widget _buildReferAFriend(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 234.h, right: 24.h),
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.outlineBlueGrayA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("Refer a friend",
                    style:
                        CustomTextStyles.titleMediumMulishOnPrimaryContainer),
                SizedBox(height: 16.v),
                Text("Share your promo code with a friend",
                    style: CustomTextStyles.titleSmallMulishBluegray300)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 70.h, top: 18.v, bottom: 18.v))
        ]));
  }

  /// Section Widget
  Widget _buildThreeForOne(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 234.h, right: 24.h),
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.outlineBlueGrayA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("3 for 1",
                    style:
                        CustomTextStyles.titleMediumMulishOnPrimaryContainer),
                SizedBox(height: 16.v),
                Text("Buy 3 dishes and get 1 for free",
                    style: CustomTextStyles.titleSmallMulishBluegray300)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 109.h, top: 18.v, bottom: 18.v))
        ]));
  }

  /// Section Widget
  Widget _buildPointsCounter(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 234.h, right: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
        decoration: AppDecoration.outlineBlueGrayA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("240 points",
                    style:
                        CustomTextStyles.titleMediumMulishOnPrimaryContainer),
                SizedBox(height: 14.v),
                Text("Transform your points in real INR",
                    style: CustomTextStyles.titleSmallMulishBluegray300)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 94.h, top: 17.v, bottom: 17.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
