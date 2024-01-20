// ignore_for_file: must_be_immutable

part of 'history_bloc.dart';

/// Represents the state of History in the application.
class HistoryState extends Equatable {
  HistoryState({this.historyModelObj});

  HistoryModel? historyModelObj;

  @override
  List<Object?> get props => [
        historyModelObj,
      ];
  HistoryState copyWith({HistoryModel? historyModelObj}) {
    return HistoryState(
      historyModelObj: historyModelObj ?? this.historyModelObj,
    );
  }
}
