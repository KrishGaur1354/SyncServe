import '../search_screen/widgets/stackgrid_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'models/stackgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:syncserve_v1/core/app_export.dart';
import 'package:syncserve_v1/widgets/custom_search_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray200,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildArrowLeftSearchView(context),
                    SizedBox(height: 47.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 33.h, vertical: 15.v),
                        decoration: AppDecoration.fillGray50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                              width: 215.h,
                              child: Text("msg_search_for_your_favourite".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 43.v),
                          _buildStackGrid(context),
                          SizedBox(height: 43.v)
                        ]))
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftSearchView(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 42.h, right: 19.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 18.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: BlocSelector<SearchBloc, SearchState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search".tr);
                          })))
            ])));
  }

  /// Section Widget
  Widget _buildStackGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
            selector: (state) => state.searchModelObj,
            builder: (context, searchModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 253.v,
                      crossAxisCount: 1,
                      mainAxisSpacing: 1.h,
                      crossAxisSpacing: 1.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: searchModelObj?.stackgridItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    StackgridItemModel model =
                        searchModelObj?.stackgridItemList[index] ??
                            StackgridItemModel();
                    return StackgridItemWidget(model, payt: () {
                      payt(context);
                    });
                  });
            }));
  }

  /// Navigates to the food1Screen when the action is triggered.
  payt(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.food1Screen);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
