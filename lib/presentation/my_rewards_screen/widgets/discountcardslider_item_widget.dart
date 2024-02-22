import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';
import '../controller/my_rewards_controller.dart';
import '../models/discountcardslider_item_model.dart';

// ignore: must_be_immutable
class DiscountcardsliderItemWidget extends StatelessWidget {
  DiscountcardsliderItemWidget(
    this.discountcardsliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscountcardsliderItemModel discountcardsliderItemModelObj;

  var controller = Get.find<MyRewardsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 234.h),
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  top: 32.v,
                  bottom: 28.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_new_client".tr,
                      style: CustomTextStyles.bodySmallMulishBluegray30002,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 141.h,
                      child: Text(
                        "msg_exclusive_restaurants".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumMulishOnPrimary
                            .copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                    SizedBox(height: 11.v),
                    CustomElevatedButton(
                      height: 46.v,
                      text: "lbl_claim_reward".tr,
                      margin: EdgeInsets.only(right: 4.h),
                      buttonStyle: CustomButtonStyles.fillTeal,
                      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.h),
              padding: EdgeInsets.symmetric(vertical: 13.v),
              decoration: AppDecoration.fillOnPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder99,
              ),
              child: Container(
                height: 158.adaptSize,
                width: 158.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 34.h,
                  vertical: 28.v,
                ),
                decoration: AppDecoration.fillOnPrimary2.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder79,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCasualLife3dRewardBadge1,
                  height: 101.v,
                  width: 69.h,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
