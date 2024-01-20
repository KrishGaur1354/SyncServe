import '../payment_screen/widgets/cardlist_item_widget.dart';
import 'bloc/payment_bloc.dart';
import 'models/cardlist_item_model.dart';
import 'models/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_title.dart';
import 'package:syncserve_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
        create: (context) =>
            PaymentBloc(PaymentState(paymentModelObj: PaymentModel()))
              ..add(PaymentInitialEvent()),
        child: PaymentScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_information".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 11.v),
                      Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 20.v),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6,
                                    height: 60.adaptSize,
                                    width: 60.adaptSize,
                                    radius: BorderRadius.circular(10.h),
                                    margin: EdgeInsets.only(bottom: 33.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.h, bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                profile(context);
                                              },
                                              child: Text("lbl_jean_paul".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          SizedBox(height: 9.v),
                                          Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                  "msg_jpletemknow_gmail_com"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack90013)),
                                          SizedBox(height: 7.v),
                                          Opacity(
                                              opacity: 0.5,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    navitoaddress(context);
                                                  },
                                                  child: SizedBox(
                                                      width: 185.h,
                                                      child: Text(
                                                          "msg_d_xx_abd_street"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyMediumBlack90013))))
                                        ]))
                              ])),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_payment_method".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 18.v),
                      _buildCardList(context)
                    ])),
            bottomNavigationBar: _buildPayNowButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_payment".tr, margin: EdgeInsets.only(left: 96.h)));
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: BlocSelector<PaymentBloc, PaymentState, PaymentModel?>(
            selector: (state) => state.paymentModelObj,
            builder: (context, paymentModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Opacity(
                        opacity: 0.3,
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0.v),
                            child: SizedBox(
                                width: 232.h,
                                child: Divider(
                                    height: 1.v,
                                    thickness: 1.v,
                                    color:
                                        appTheme.black900.withOpacity(0.46)))));
                  },
                  itemCount: paymentModelObj?.cardlistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    CardlistItemModel model =
                        paymentModelObj?.cardlistItemList[index] ??
                            CardlistItemModel();
                    return CardlistItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildPayNowButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_pay_now".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the profileScreen when the action is triggered.
  profile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the mapsScreen when the action is triggered.
  navitoaddress(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mapsScreen,
    );
  }
}
