import '../iphone_11_pro_max_four_screen/widgets/eightyone_item_widget.dart';
import 'models/eightyone_item_model.dart';
import 'models/iphone_11_pro_max_four_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'provider/iphone_11_pro_max_four_provider.dart';

class Iphone11ProMaxFourScreen extends StatefulWidget {
  const Iphone11ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxFourScreenState createState() =>
      Iphone11ProMaxFourScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxFourProvider(),
        child: Iphone11ProMaxFourScreen());
  }
}

class Iphone11ProMaxFourScreenState extends State<Iphone11ProMaxFourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 35.v),
                      _buildSlider(context),
                      SizedBox(height: 47.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_paneer_tikka_masala".tr,
                              style: theme.textTheme.headlineMedium)),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_rs_100".tr,
                              style: CustomTextStyles.titleLargePrimary23)),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_delivery_info".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 1.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 300.h,
                              margin: EdgeInsets.only(left: 20.h, right: 27.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_self_pickup_available2".tr,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.39)),
                                    TextSpan(
                                        text: "msg_9_15_pm_to_9_32".tr,
                                        style:
                                            CustomTextStyles.bodyMediumffdd1313)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_return_policy".tr,
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 2.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(left: 20.h, right: 42.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_restaurant_now_offering2".tr,
                                    style: theme.textTheme.bodyMedium),
                                TextSpan(
                                    text: "lbl_65_less".tr,
                                    style: CustomTextStyles.bodyMediumff1a8600),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "msg_than_what_the_price".tr,
                                    style: theme.textTheme.bodyMedium),
                                TextSpan(
                                    text: "msg_5_hours_ago_all".tr,
                                    style: CustomTextStyles.bodyMediumff1d00d3
                                        .copyWith(height: 1.39))
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            bottomNavigationBar: _buildAddToCart(context)));
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Container(
        height: 336.v,
        width: 340.h,
        margin: EdgeInsets.only(left: 8.h),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Consumer<Iphone11ProMaxFourProvider>(
              builder: (context, provider, child) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                    height: 336.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      provider.sliderIndex = index;
                    }),
                itemCount: provider
                    .iphone11ProMaxFourModelObj.eightyoneItemList.length,
                itemBuilder: (context, index, realIndex) {
                  EightyoneItemModel model = provider
                      .iphone11ProMaxFourModelObj.eightyoneItemList[index];
                  return EightyoneItemWidget(model);
                });
          }),
          Align(
              alignment: Alignment.bottomCenter,
              child: Consumer<Iphone11ProMaxFourProvider>(
                  builder: (context, provider, child) {
                return SizedBox(
                    height: 8.v,
                    child: AnimatedSmoothIndicator(
                        activeIndex: provider.sliderIndex,
                        count: provider.iphone11ProMaxFourModelObj
                            .eightyoneItemList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            spacing: 12,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: appTheme.gray400,
                            dotHeight: 8.v,
                            dotWidth: 8.h)));
              }))
        ]));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          onTapAddToCart(context);
        });
  }

  /// Navigates to the iphone11ProMaxSeventeenScreen when the action is triggered.
  onTapAddToCart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxSeventeenScreen,
    );
  }
}
