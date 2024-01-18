import 'models/iphone_11_pro_max_one_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import 'provider/iphone_11_pro_max_one_provider.dart';

class Iphone11ProMaxOneScreen extends StatefulWidget {
  const Iphone11ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxOneScreenState createState() => Iphone11ProMaxOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxOneProvider(),
        child: Iphone11ProMaxOneScreen());
  }
}

class Iphone11ProMaxOneScreenState extends State<Iphone11ProMaxOneScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.iphone11ProMaxThreeTabContainerScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 156.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Text("msg_budget_friendly".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 6.v),
                      SizedBox(
                          height: 622.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 213.h,
                                    margin: EdgeInsets.only(right: 11.h),
                                    child: Text("msg_waste_free_delights".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: theme.textTheme.displayMedium))),
                            CustomImageView(
                                imagePath: ImageConstant.imgPngwing1,
                                height: 491.v,
                                width: 320.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 19.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle5,
                                height: 180.v,
                                width: 221.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 29.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle4,
                                height: 64.v,
                                width: 244.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 11.v)),
                            CustomElevatedButton(
                                width: 297.h,
                                text: "lbl_get_started".tr,
                                margin: EdgeInsets.only(left: 51.h),
                                buttonStyle: CustomButtonStyles.outlineBlack,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumGreen900,
                                onPressed: () {
                                  onTapGetStarted(context);
                                },
                                alignment: Alignment.bottomLeft)
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(height: 90.v, actions: [
      AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup5,
          margin: EdgeInsets.symmetric(horizontal: 24.h))
    ]);
  }

  /// Navigates to the iphone11ProMaxTwoScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxTwoScreen,
    );
  }
}
