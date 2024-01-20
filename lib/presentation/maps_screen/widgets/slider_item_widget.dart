import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.img63ec96ccabdc78d312x337,
        height: 312.v,
        width: 337.h,
      ),
    );
  }
}
