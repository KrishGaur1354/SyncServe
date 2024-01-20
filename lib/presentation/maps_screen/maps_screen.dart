import '../maps_screen/widgets/slider_item_widget.dart';
import 'bloc/maps_bloc.dart';
import 'models/maps_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';
import 'package:syncserve_v1/widgets/custom_text_form_field.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MapsBloc>(
        create: (context) => MapsBloc(MapsState(mapsModelObj: MapsModel()))
          ..add(MapsInitialEvent()),
        child: MapsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
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
                                        imagePath: ImageConstant.imgArrowLeft,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                            left: 24.h, top: 15.v),
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgHeart,
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
                                                          "msg_paneer_tikka_masala2"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .headlineMedium)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 115.h),
                                                      child: Text(
                                                          "lbl_rs_100".tr,
                                                          style: theme.textTheme
                                                              .titleLarge)),
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
                                                          "msg_5_hours_ago_all2"
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
                                                    .titleMediumGray100))),
                                    _buildSlider(context),
                                    _buildAddressColumn(context),
                                    _buildAddressColumn1(context),
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
                                                  _buildHomeButton(context),
                                                  _buildWorkButton(context),
                                                  _buildOtherButton(context)
                                                ])))
                                  ])))),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage16,
                      height: 896.v,
                      width: 412.h,
                      alignment: Alignment.center,
                      onTap: () {
                        navitopay(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return BlocBuilder<MapsBloc, MapsState>(builder: (context, state) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 312.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                state.sliderIndex = index;
              }),
          itemCount: state.mapsModelObj?.sliderItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            SliderItemModel model =
                state.mapsModelObj?.sliderItemList[index] ?? SliderItemModel();
            return SliderItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildSetAsDefaultLocation(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_set_as_default_location".tr,
        onPressed: () {
          onTapSetAsDefaultLocation(context);
        });
  }

  /// Section Widget
  Widget _buildAddressColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
            margin: EdgeInsets.only(left: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 27.v),
              _buildSetAsDefaultLocation(context)
            ])));
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 12.h),
        child: BlocSelector<MapsBloc, MapsState, TextEditingController?>(
            selector: (state) => state.addressEditTextController,
            builder: (context, addressEditTextController) {
              return CustomTextFormField(
                  controller: addressEditTextController,
                  hintText: "msg_d_xx_acd_street".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 2.h));
            }));
  }

  /// Section Widget
  Widget _buildPriceEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: BlocSelector<MapsBloc, MapsState, TextEditingController?>(
            selector: (state) => state.priceEditTextController,
            builder: (context, priceEditTextController) {
              return CustomTextFormField(
                  controller: priceEditTextController,
                  hintText: "lbl_11xxxx".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
            }));
  }

  /// Section Widget
  Widget _buildAddressColumn1(BuildContext context) {
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
                  _buildAddressEditText(context),
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
                  Divider(
                      color: appTheme.black900, indent: 1.h, endIndent: 12.h),
                  SizedBox(height: 22.v),
                  Opacity(
                      opacity: 0.4,
                      child: Text("lbl_postcode".tr,
                          style: theme.textTheme.titleSmall)),
                  SizedBox(height: 15.v),
                  _buildPriceEditText(context),
                  SizedBox(height: 15.v)
                ])));
  }

  /// Section Widget
  Widget _buildLanguageEditText(BuildContext context) {
    return BlocSelector<MapsBloc, MapsState, TextEditingController?>(
        selector: (state) => state.languageEditTextController,
        builder: (context, languageEditTextController) {
          return CustomTextFormField(
              controller: languageEditTextController,
              hintText: "lbl".tr,
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
                  _buildLanguageEditText(context),
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
  Widget _buildHomeButton(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        width: 107.h,
        text: "lbl_home".tr,
        buttonStyle: CustomButtonStyles.fillTeal,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary);
  }

  /// Section Widget
  Widget _buildWorkButton(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        width: 107.h,
        text: "lbl_work".tr,
        margin: EdgeInsets.only(left: 5.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMedium16);
  }

  /// Section Widget
  Widget _buildOtherButton(BuildContext context) {
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

  /// Navigates to the paymentScreen when the action is triggered.
  onTapSetAsDefaultLocation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  navitopay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }
}
