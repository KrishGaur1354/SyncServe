import '../iphone_11_pro_max_three_page/widgets/productcard_item_widget.dart';
import 'models/iphone_11_pro_max_three_model.dart';
import 'models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';
import 'provider/iphone_11_pro_max_three_provider.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThreePage extends StatefulWidget {
  const Iphone11ProMaxThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxThreePageState createState() => Iphone11ProMaxThreePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone11ProMaxThreeProvider(),
      child: Iphone11ProMaxThreePage(),
    );
  }
}

class Iphone11ProMaxThreePageState extends State<Iphone11ProMaxThreePage>
    with AutomaticKeepAliveClientMixin<Iphone11ProMaxThreePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 64.v),
              _buildProductCardList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 321.v,
              child: Consumer<Iphone11ProMaxThreeProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 34.h,
                      );
                    },
                    itemCount: provider
                        .iphone11ProMaxThreeModelObj.productcardItemList.length,
                    itemBuilder: (context, index) {
                      ProductcardItemModel model = provider
                          .iphone11ProMaxThreeModelObj
                          .productcardItemList[index];
                      return ProductcardItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 52.v),
            Padding(
              padding: EdgeInsets.only(right: 52.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHeroiconsSolidHome,
                    height: 31.adaptSize,
                    width: 31.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgHeart,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.3,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcSharpHistory,
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
