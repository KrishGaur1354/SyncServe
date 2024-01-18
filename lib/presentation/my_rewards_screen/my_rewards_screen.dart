import '../my_rewards_screen/widgets/userprofile_item_widget.dart';
import 'models/my_rewards_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'provider/my_rewards_provider.dart';

class MyRewardsScreen extends StatefulWidget {
  const MyRewardsScreen({Key? key}) : super(key: key);

  @override
  MyRewardsScreenState createState() => MyRewardsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyRewardsProvider(), child: MyRewardsScreen());
  }
}

class MyRewardsScreenState extends State<MyRewardsScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                                                      child: Text(
                                                          "lbl_my_rewards".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumMulishOnPrimary))
                                                ]),
                                                SizedBox(height: 73.v),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "msg_offers_promotions"
                                                            .tr,
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
                                                            "lbl_get_new_rewards"
                                                                .tr,
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
    return Consumer<MyRewardsProvider>(builder: (context, provider, child) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 184.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                provider.sliderIndex = index;
              }),
          itemCount: provider.myRewardsModelObj.userprofileItemList.length,
          itemBuilder: (context, index, realIndex) {
            UserprofileItemModel model =
                provider.myRewardsModelObj.userprofileItemList[index];
            return UserprofileItemWidget(model);
          });
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
                Text("lbl_refer_a_friend".tr,
                    style:
                        CustomTextStyles.titleMediumMulishOnPrimaryContainer),
                SizedBox(height: 16.v),
                Text("msg_share_your_promo".tr,
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
                Text("lbl_3_for_1".tr,
                    style:
                        CustomTextStyles.titleMediumMulishOnPrimaryContainer),
                SizedBox(height: 16.v),
                Text("msg_buy_3_dishes_and".tr,
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
                Text("lbl_240_points".tr,
                    style:
                        CustomTextStyles.titleMediumMulishOnPrimaryContainer),
                SizedBox(height: 14.v),
                Text("msg_transform_your_points".tr,
                    style: CustomTextStyles.titleSmallMulishBluegray300)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 94.h, top: 17.v, bottom: 17.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
