import '../models/stackgrid_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:syncserve_v1/core/app_export.dart';

// ignore: must_be_immutable
class StackgridItemWidget extends StatelessWidget {
  StackgridItemWidget(
    this.stackgridItemModelObj, {
    Key? key,
    this.payt,
  }) : super(
          key: key,
        );

  StackgridItemModel stackgridItemModelObj;

  VoidCallback? payt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 252.v,
      width: 156.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 45.h,
                vertical: 24.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 134.v),
                  Text(
                    stackgridItemModelObj.text!,
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: stackgridItemModelObj?.image,
            height: 128.adaptSize,
            width: 128.adaptSize,
            radius: BorderRadius.circular(
              64.h,
            ),
            alignment: Alignment.topCenter,
            onTap: () {
              payt!.call();
            },
          ),
        ],
      ),
    );
  }
}
