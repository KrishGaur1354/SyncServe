import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'controller/homepage_controller.dart';
import 'models/homepage_item_model.dart';
import 'models/homepage_model.dart';
import 'widgets/homepage_item_widget.dart';

class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10005,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 37.v),
              _buildVeggieTomatoMix(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVeggieTomatoMix() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 321.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 34.h,
                    );
                  },
                  itemCount: controller
                      .homepageModelObj.value.homepageItemList.value.length,
                  itemBuilder: (context, index) {
                    HomepageItemModel model = controller
                        .homepageModelObj.value.homepageItemList.value[index];
                    return HomepageItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 79.v),
            Padding(
              padding: EdgeInsets.only(right: 52.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHeroiconsSolidHome,
                    height: 31.adaptSize,
                    width: 31.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgHeart,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserPrimarycontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.3,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcSharpHistory,
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
