import '../models/eightyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';

// ignore: must_be_immutable
class EightyoneItemWidget extends StatelessWidget {
  EightyoneItemWidget(
    this.eightyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightyoneItemModel eightyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 336.v,
        width: 340.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img63ec96ccabdc78d,
              height: 312.v,
              width: 337.h,
              alignment: Alignment.topCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftBlack900,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 15.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgHeartBlack900,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 15.v,
                right: 21.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
