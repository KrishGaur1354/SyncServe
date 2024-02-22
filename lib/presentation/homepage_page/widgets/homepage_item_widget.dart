import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import '../controller/homepage_controller.dart';
import '../models/homepage_item_model.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget(
    this.homepageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepageItemModel homepageItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 321.v,
      width: 220.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 50.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 113.v),
                  Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                      width: 114.h,
                      child: Obx(
                        () => Text(
                          homepageItemModelObj.veggieTomatoMix!.value,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeBlack900.copyWith(
                            height: 1.01,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => Text(
                        homepageItemModelObj.rsCounter!.value,
                        style: CustomTextStyles.titleLargePrimary23,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: homepageItemModelObj.veggietomatomix!.value,
              height: 164.adaptSize,
              width: 164.adaptSize,
              radius: BorderRadius.circular(
                82.h,
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }
}
