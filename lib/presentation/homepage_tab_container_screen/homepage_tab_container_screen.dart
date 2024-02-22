import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/presentation/homepage_page/homepage_page.dart';
import 'package:syncserve/widgets/app_bar/appbar_leading_image.dart';
import 'package:syncserve/widgets/app_bar/appbar_trailing_image.dart';
import 'package:syncserve/widgets/app_bar/custom_app_bar.dart';
import 'package:syncserve/widgets/custom_search_view.dart';
import 'controller/homepage_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class HomepageTabContainerScreen
    extends GetWidget<HomepageTabContainerController> {
  const HomepageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray10005,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.v),
              Container(
                width: 264.h,
                margin: EdgeInsets.only(left: 50.h),
                child: Text(
                  "msg_affordable_dining".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    alignment: Alignment.center,
                    borderDecoration: SearchViewStyleHelper.fillGray,
                    fillColor: appTheme.gray20002,
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              _buildTabview(),
              SizedBox(
                height: 515.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    HomepagePage(),
                    HomepagePage(),
                    HomepagePage(),
                    HomepagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 54.h,
          top: 25.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShoppingCart,
          margin: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 33.v,
      width: 339.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'Inria Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'Inria Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_foods".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_platters".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_snacks".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_beverages".tr,
            ),
          ),
        ],
      ),
    );
  }
}
