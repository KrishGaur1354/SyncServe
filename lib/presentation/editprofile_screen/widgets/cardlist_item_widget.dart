import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'package:syncserve/widgets/custom_icon_button.dart';
import '../controller/editprofile_controller.dart';
import '../models/cardlist_item_model.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(
    this.cardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

  var controller = Get.find<EditprofileController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 29.v,
          ),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlineDeepOrangeA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Container(
            height: 7.adaptSize,
            width: 7.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.deepOrangeA400,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            bottom: 15.v,
          ),
          child: Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillOrange,
              child: CustomImageView(
                imagePath: cardlistItemModelObj.dynamicProperty2!.value,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 9.v,
            bottom: 25.v,
          ),
          child: Obx(
            () => Text(
              cardlistItemModelObj.dynamicProperty3!.value,
              style: CustomTextStyles.bodyLargeBlack900_1,
            ),
          ),
        ),
      ],
    );
  }
}
