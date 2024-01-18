import '../iphone_11_pro_max_seventeen_screen/widgets/slider_item_widget.dart';
import 'models/iphone_11_pro_max_seventeen_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_text_form_field.dart';
import 'provider/iphone_11_pro_max_seventeen_provider.dart';

class Iphone11ProMaxSeventeenScreen extends StatefulWidget {
  const Iphone11ProMaxSeventeenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxSeventeenScreenState createState() =>
      Iphone11ProMaxSeventeenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxSeventeenProvider(),
        child: Iphone11ProMaxSeventeenScreen());
  }
}

class Iphone11ProMaxSeventeenScreenState
    extends State<Iphone11ProMaxSeventeenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: 422.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: Container(
                              height: 840.v,
                              width: 412.h,
                              margin: EdgeInsets.only(bottom: 11.v),
                              padding: EdgeInsets.symmetric(horizontal: 17.h),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftBlack900,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                            left: 24.h, top: 15.v),
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgHeartBlack900,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                            top: 15.v, right: 28.h)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 36.h, right: 20.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                          height: 8.v,
                                                          child: AnimatedSmoothIndicator(
                                                              activeIndex: 0,
                                                              count: 4,
                                                              effect: ScrollingDotsEffect(
                                                                  spacing: 12,
                                                                  activeDotColor: theme
                                                                      .colorScheme
                                                                      .primary,
                                                                  dotColor:
                                                                      appTheme
                                                                          .gray400,
                                                                  dotHeight:
                                                                      8.v,
                                                                  dotWidth:
                                                                      8.h)))),
                                                  SizedBox(height: 47.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text(
                                                          "msg_paneer_tikka_masala"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .headlineMedium)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 115.h),
                                                      child: Text(
                                                          "lbl_rs_100".tr,
                                                          style: CustomTextStyles
                                                              .titleLargePrimary23)),
                                                  SizedBox(height: 22.v),
                                                  Text("lbl_delivery_info".tr,
                                                      style: CustomTextStyles
                                                          .titleMedium17),
                                                  SizedBox(height: 1.v),
                                                  Container(
                                                      width: 300.h,
                                                      margin: EdgeInsets.only(
                                                          right: 21.h),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_self_pickup_available2"
                                                                            .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium!
                                                                        .copyWith(
                                                                            height:
                                                                                1.39)),
                                                                TextSpan(
                                                                    text:
                                                                        "msg_9_15_pm_to_9_32"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumffdd1313)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 36.h, bottom: 258.v),
                                            child: Text("lbl_return_policy".tr,
                                                style: CustomTextStyles
                                                    .titleMedium17))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: 285.h,
                                            margin: EdgeInsets.only(
                                                left: 36.h, bottom: 109.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_restaurant_now_offering2"
                                                              .tr,
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                  TextSpan(
                                                      text: "lbl_65_less".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumff1a8600),
                                                  TextSpan(text: " "),
                                                  TextSpan(
                                                      text:
                                                          "msg_than_what_the_price"
                                                              .tr,
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                  TextSpan(
                                                      text:
                                                          "msg_5_hours_ago_all"
                                                              .tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumff1d00d3
                                                          .copyWith(
                                                              height: 1.39))
                                                ]),
                                                textAlign: TextAlign.left))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 32.h,
                                                right: 32.h,
                                                bottom: 30.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 111.h,
                                                vertical: 24.v),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder30),
                                            child: Text("lbl_add_to_cart".tr,
                                                style: CustomTextStyles
                                                    .titleMediumGray10001))),
                                    _buildSlider(context),
                                    _buildColumn(context),
                                    _buildColumn1(context),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 21.adaptSize,
                                            width: 21.adaptSize,
                                            margin: EdgeInsets.only(top: 135.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.greenA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.h)))),
                                    _buildSix(context),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 114.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _buildButton1(context),
                                                  _buildButton2(context),
                                                  _buildButton3(context)
                                                ])))
                                  ])))),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage16,
                      height: 896.v,
                      width: 412.h,
                      alignment: Alignment.center)
                ]))));
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Consumer<Iphone11ProMaxSeventeenProvider>(
        builder: (context, provider, child) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 312.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                provider.sliderIndex = index;
              }),
          itemCount:
              provider.iphone11ProMaxSeventeenModelObj.sliderItemList.length,
          itemBuilder: (context, index, realIndex) {
            SliderItemModel model =
                provider.iphone11ProMaxSeventeenModelObj.sliderItemList[index];
            return SliderItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return CustomElevatedButton(text: "msg_set_as_default_location".tr);
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
            margin: EdgeInsets.only(left: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(height: 27.v), _buildButton(context)])));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 12.h),
        child:
            Selector<Iphone11ProMaxSeventeenProvider, TextEditingController?>(
                selector: (context, provider) => provider.editTextController,
                builder: (context, editTextController, child) {
                  return CustomTextFormField(
                      controller: editTextController,
                      hintText: "msg_d_xx_acd_street".tr,
                      contentPadding: EdgeInsets.symmetric(horizontal: 2.h));
                }));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child:
            Selector<Iphone11ProMaxSeventeenProvider, TextEditingController?>(
                selector: (context, provider) => provider.editTextController1,
                builder: (context, editTextController1, child) {
                  return CustomTextFormField(
                      controller: editTextController1,
                      hintText: "lbl_11xxxx".tr,
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
                }));
  }

  /// Section Widget
  Widget _buildColumn1(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
            margin: EdgeInsets.only(left: 20.h, bottom: 180.v),
            padding: EdgeInsets.symmetric(vertical: 11.v),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                      opacity: 0.4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_address_line_1".tr,
                              style: theme.textTheme.titleSmall))),
                  SizedBox(height: 14.v),
                  _buildEditText(context),
                  SizedBox(height: 17.v),
                  Opacity(
                      opacity: 0.4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_address_line_2".tr,
                              style: theme.textTheme.titleSmall))),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text("msg_sector_xx_new_city_11xxxx".tr,
                          style: CustomTextStyles.titleMedium17)),
                  SizedBox(height: 9.v),
                  Divider(indent: 1.h, endIndent: 12.h),
                  SizedBox(height: 22.v),
                  Opacity(
                      opacity: 0.4,
                      child: Text("lbl_postcode".tr,
                          style: theme.textTheme.titleSmall)),
                  SizedBox(height: 15.v),
                  _buildEditText1(context),
                  SizedBox(height: 15.v)
                ])));
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Selector<Iphone11ProMaxSeventeenProvider, TextEditingController?>(
        selector: (context, provider) => provider.editTextController2,
        builder: (context, editTextController2, child) {
          return CustomTextFormField(
              controller: editTextController2,
              hintText: "lbl2".tr,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
        });
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, right: 13.h, bottom: 179.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                      opacity: 0.4,
                      child: Text("msg_landmark_optional".tr,
                          style: theme.textTheme.titleSmall)),
                  SizedBox(height: 14.v),
                  _buildEditText2(context),
                  SizedBox(height: 14.v),
                  Opacity(
                      opacity: 0.4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 140.h),
                          child: Text("lbl_label_as".tr,
                              style: theme.textTheme.titleSmall)))
                ])));
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        width: 107.h,
        text: "lbl_home".tr,
        buttonStyle: CustomButtonStyles.fillTeal,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary);
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        width: 107.h,
        text: "lbl_work".tr,
        margin: EdgeInsets.only(left: 5.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMedium16);
  }

  /// Section Widget
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        width: 107.h,
        text: "lbl_other".tr,
        margin: EdgeInsets.only(left: 7.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMedium16);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
