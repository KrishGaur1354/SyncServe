import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'package:syncserve/widgets/custom_text_form_field.dart';
import 'controller/set_location_controller.dart';

// ignore_for_file: must_be_immutable
class SetLocationScreen extends GetWidget<SetLocationController> {
  SetLocationScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 928.v,
                        width: double.maxFinite,
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildHorizontalScroll(),
                              _buildSetLocation()
                            ]))))));
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 292.v),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 635.v,
                    width: 426.h,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVector623x413,
                          height: 623.v,
                          width: 413.h,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: EdgeInsets.only(left: 12.h),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup40),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    Opacity(
                                        opacity: 0.5,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroupOnerror,
                                            height: 626.v,
                                            width: 414.h))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 635.v,
                              width: 426.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorOnprimary,
                                        height: 517.v,
                                        width: 426.h,
                                        alignment: Alignment.bottomCenter),
                                    SizedBox(
                                        height: 474.v,
                                        width: 425.h,
                                        child: GoogleMap(
                                            mapType: MapType.normal,
                                            initialCameraPosition:
                                                CameraPosition(
                                                    target: LatLng(
                                                        37.43296265331129,
                                                        -122.08832357078792),
                                                    zoom: 14.4746),
                                            onMapCreated: (GoogleMapController
                                                controller) {
                                              googleMapController
                                                  .complete(controller);
                                            },
                                            zoomControlsEnabled: false,
                                            zoomGesturesEnabled: false,
                                            myLocationButtonEnabled: false,
                                            myLocationEnabled: false))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildSetLocation() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text("lbl_select_location".tr,
                          style: CustomTextStyles.titleLargeDMSansGray90001)),
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("lbl_your_location".tr,
                          style: theme.textTheme.bodySmall)),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: CustomTextFormField(
                          controller: controller.locationController,
                          hintText: "msg_ranikhet_pitampura".tr,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineGray)),
                  SizedBox(height: 4.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("lbl_save_as".tr,
                          style: theme.textTheme.bodySmall)),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 18.h),
                      child: Row(children: [
                        Container(
                            width: 173.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 10.v),
                            decoration: AppDecoration.fillGray10004.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 31.v,
                                      width: 26.h,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 31.v,
                                                    width: 26.h,
                                                    decoration: BoxDecoration(
                                                        color: theme
                                                            .colorScheme.primary
                                                            .withOpacity(0.24),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    15.h)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgHome,
                                                height: 14.v,
                                                width: 11.h,
                                                alignment: Alignment.topCenter,
                                                margin:
                                                    EdgeInsets.only(top: 6.v))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 2.v, bottom: 9.v),
                                      child: Text("lbl_home".tr,
                                          style: CustomTextStyles
                                              .titleSmallDMSansGray90001))
                                ])),
                        Container(
                            width: 173.h,
                            margin: EdgeInsets.only(left: 10.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 10.v),
                            decoration: AppDecoration.fillGray10004.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 31.v,
                                      width: 26.h,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 31.v,
                                                    width: 26.h,
                                                    decoration: BoxDecoration(
                                                        color: theme
                                                            .colorScheme.primary
                                                            .withOpacity(0.25),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    15.h)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgThumbsUp,
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: 6.h, top: 8.v))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, top: 2.v, bottom: 9.v),
                                      child: Text("lbl_office".tr,
                                          style: CustomTextStyles
                                              .titleSmallDMSansGray90001))
                                ]))
                      ])),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                      text: "msg_select_as_address".tr,
                      margin: EdgeInsets.only(left: 6.h, right: 12.h),
                      onPressed: () {
                        navugatetoapat();
                      }),
                  SizedBox(height: 42.v)
                ])));
  }

  /// Navigates to the threeScreen when the action is triggered.
  navugatetoapat() {
    Get.toNamed(
      AppRoutes.threeScreen,
    );
  }
}
