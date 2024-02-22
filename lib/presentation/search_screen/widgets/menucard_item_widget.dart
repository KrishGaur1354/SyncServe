import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import '../controller/search_controller.dart';
import '../models/menucard_item_model.dart';

// ignore: must_be_immutable
class MenucardItemWidget extends StatelessWidget {
  MenucardItemWidget(
    this.menucardItemModelObj, {
    Key? key,
    this.navigatetofood,
  }) : super(
          key: key,
        );

  MenucardItemModel menucardItemModelObj;

  var controller = Get.find<SearchController>();

  VoidCallback? navigatetofood;

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
                horizontal: 13.h,
                vertical: 24.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 78.v),
                  GestureDetector(
                    onTap: () {
                      navigatetofood!.call();
                    },
                    child: SizedBox(
                      width: 119.h,
                      child: Obx(
                        () => Text(
                          menucardItemModelObj.title!.value,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge!.copyWith(
                            height: 1.01,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => Text(
                        menucardItemModelObj.rsCounter!.value,
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
              imagePath: menucardItemModelObj.riceWEggsBeans!.value,
              height: 128.adaptSize,
              width: 128.adaptSize,
              radius: BorderRadius.circular(
                64.h,
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }
}
