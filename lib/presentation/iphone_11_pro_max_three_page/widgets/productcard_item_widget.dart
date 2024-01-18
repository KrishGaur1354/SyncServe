import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

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
                vertical: 32.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 109.v),
                  Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                      width: 114.h,
                      child: Text(
                        productcardItemModelObj.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900.copyWith(
                          height: 1.01,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      productcardItemModelObj.price!,
                      style: CustomTextStyles.titleLargePrimary23,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: productcardItemModelObj?.image,
            height: 164.adaptSize,
            width: 164.adaptSize,
            radius: BorderRadius.circular(
              82.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
