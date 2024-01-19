import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

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
                      "New client",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 141.h,
                      child: Text(
                        "Exclusive Restaurants Offers",
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
                      text: "Claim reward",
                      margin: EdgeInsets.only(right: 4.h),
                      buttonStyle: CustomButtonStyles.fillTealTL12,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallMulishOnPrimary,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.h),
              padding: EdgeInsets.all(20.h),
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
