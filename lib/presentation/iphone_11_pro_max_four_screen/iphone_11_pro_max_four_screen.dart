import '../iphone_11_pro_max_four_screen/widgets/eightyone_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourScreen extends StatelessWidget {
  Iphone11ProMaxFourScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

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
                          child: Text("Paneer Tikka Masala (Full)",
                              style: theme.textTheme.headlineMedium)),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Rs. 100",
                              style: CustomTextStyles.titleLargePrimary23)),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Delivery info",
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
                                        text:
                                            "Self-Pickup available (no delivery charge).\nHome Delivery also available (charges apply).\nDelivery between",
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.39)),
                                    TextSpan(
                                        text: " 9:15 pm to 9:32 pm.",
                                        style:
                                            CustomTextStyles.bodyMediumffdd1313)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Return policy",
                              style: CustomTextStyles.titleMedium17)),
                      SizedBox(height: 2.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(left: 20.h, right: 42.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Restaurant now offering meal at ",
                                    style: theme.textTheme.bodyMedium),
                                TextSpan(
                                    text: "65% less",
                                    style: CustomTextStyles.bodyMediumff1a8600),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "than what the price was ",
                                    style: theme.textTheme.bodyMedium),
                                TextSpan(
                                    text:
                                        "5 hours ago.\n \nAll our food undergoes stringent quality checks before leaving our stores so, by any case if you found a broken food please contact our hot-line immediately. ",
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
          CarouselSlider.builder(
              options: CarouselOptions(
                  height: 336.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    sliderIndex = index;
                  }),
              itemCount: 1,
              itemBuilder: (context, index, realIndex) {
                return EightyoneItemWidget();
              }),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 12,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.gray400,
                          dotHeight: 8.v,
                          dotWidth: 8.h))))
        ]));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "Add to cart",
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          moreFoods(context);
        });
  }

  /// Navigates to the dealsScreen when the action is triggered.
  moreFoods(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dealsScreen);
  }
}
