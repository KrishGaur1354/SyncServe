// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

/// Represents the state of Search in the application.
class SearchState extends Equatable {
  SearchState({
    this.searchController,
    this.searchModelObj,
  });

  TextEditingController? searchController;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? searchController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      searchController: searchController ?? this.searchController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
