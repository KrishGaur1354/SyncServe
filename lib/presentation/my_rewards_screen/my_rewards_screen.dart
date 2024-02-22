import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:syncserve/core/app_export.dart';
import 'controller/my_rewards_controller.dart';
import 'models/contentlist_item_model.dart';
import 'models/discountcardslider_item_model.dart';
import 'widgets/contentlist_item_widget.dart';
import 'widgets/discountcardslider_item_widget.dart';

class MyRewardsScreen extends GetWidget<MyRewardsController> {
  const MyRewardsScreen({Key? key}) : super(key: key);

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
                                                        onTapImgArrowLeft();
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
                                                  CrossAxisAlignment.start,
                                              children: [
                                                _buildDiscountCardSlider(),
                                                SizedBox(height: 22.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 234.h),
                                                    child: Text(
                                                        "lbl_get_new_rewards"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleMediumMulishBluegray60001)),
                                                SizedBox(height: 14.v),
                                                _buildContentList()
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildDiscountCardSlider() {
    return Obx(() => CarouselSlider.builder(
        options: CarouselOptions(
            height: 184.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.sliderIndex.value = index;
            }),
        itemCount: controller
            .myRewardsModelObj.value.discountcardsliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          DiscountcardsliderItemModel model = controller
              .myRewardsModelObj.value.discountcardsliderItemList.value[index];
          return DiscountcardsliderItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildContentList() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 234.h, right: 24.h),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: controller
                    .myRewardsModelObj.value.contentlistItemList.value.length,
                itemBuilder: (context, index) {
                  ContentlistItemModel model = controller
                      .myRewardsModelObj.value.contentlistItemList.value[index];
                  return ContentlistItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
