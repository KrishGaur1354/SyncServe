import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import '../controller/my_rewards_controller.dart';
import '../models/contentlist_item_model.dart';

// ignore: must_be_immutable
class ContentlistItemWidget extends StatelessWidget {
  ContentlistItemWidget(
    this.contentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ContentlistItemModel contentlistItemModelObj;

  var controller = Get.find<MyRewardsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.outlineBlueGrayA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      contentlistItemModelObj.titleText!.value,
                      style: CustomTextStyles.titleMediumMulishBluegray900,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Obx(
                    () => Text(
                      contentlistItemModelObj.detailsText!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(
                left: 70.h,
                top: 18.v,
                bottom: 18.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
