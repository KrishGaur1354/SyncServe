import 'bloc/history_bloc.dart';
import 'models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:syncserve_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve_v1/widgets/custom_elevated_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
        create: (context) =>
            HistoryBloc(HistoryState(historyModelObj: HistoryModel()))
              ..add(HistoryInitialEvent()),
        child: HistoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 172.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 118.v,
                        width: 106.h),
                    SizedBox(height: 30.v),
                    Text("lbl_no_history_yet".tr,
                        style: theme.textTheme.headlineMedium),
                    SizedBox(height: 3.v),
                    Opacity(
                        opacity: 0.57,
                        child: SizedBox(
                            width: 243.h,
                            child: Text("msg_your_order_history".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBlack900))),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildStartOrdering(context)));
    });
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
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_history".tr));
  }

  /// Section Widget
  Widget _buildStartOrdering(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_start_ordering".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v),
        onPressed: () {
          onTapStartOrdering(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the mapsScreen when the action is triggered.
  onTapStartOrdering(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mapsScreen,
    );
  }
}
