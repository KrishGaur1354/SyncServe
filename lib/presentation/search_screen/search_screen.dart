import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_search_view.dart';
import 'controller/search_controller.dart';
import 'models/menucard_item_model.dart';
import 'widgets/menucard_item_widget.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildArrowLeftSearchView(),
                    SizedBox(height: 47.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 33.h, vertical: 15.v),
                        decoration: AppDecoration.fillGray50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                              width: 215.h,
                              child: Text("msg_search_for_your_favourite".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 43.v),
                          _buildMenuCard(),
                          SizedBox(height: 43.v)
                        ]))
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftSearchView() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 42.h, right: 19.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 18.v),
                  onTap: () {
                    onTapImgArrowLeft();
                  }),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr)))
            ])));
  }

  /// Section Widget
  Widget _buildMenuCard() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 253.v,
                crossAxisCount: 1,
                mainAxisSpacing: 1.h,
                crossAxisSpacing: 1.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                controller.searchModelObj.value.menucardItemList.value.length,
            itemBuilder: (context, index) {
              MenucardItemModel model =
                  controller.searchModelObj.value.menucardItemList.value[index];
              return MenucardItemWidget(model, navigatetofood: () {
                navigatetofood();
              });
            })));
  }

  /// Navigates to the foodmainScreen when the action is triggered.
  navigatetofood() {
    Get.toNamed(AppRoutes.foodmainScreen);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
