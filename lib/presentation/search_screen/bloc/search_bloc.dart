import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stackgrid_item_model.dart';
import 'package:syncserve_v1/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<StackgridItemModel> fillStackgridItemList() {
    return [
      StackgridItemModel(text: "Paneer Tikka Masala", image: ImageConstant.img63ec96ccabdc78d312x337),
      StackgridItemModel(text: "Fried chicken", image: ImageConstant.imgImage2128x128),
      StackgridItemModel(text: "Thai egg curry w/ rice", image: ImageConstant.imgImage2)
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj
            ?.copyWith(stackgridItemList: fillStackgridItemList())));
  }
}
