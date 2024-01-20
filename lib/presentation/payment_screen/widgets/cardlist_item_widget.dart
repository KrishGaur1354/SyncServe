import '../models/cardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(
    this.cardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

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
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillOrange,
            child: CustomImageView(
              imagePath: cardlistItemModelObj?.creditCardIcon,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 9.v,
            bottom: 25.v,
          ),
          child: Text(
            cardlistItemModelObj.cardText!,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
