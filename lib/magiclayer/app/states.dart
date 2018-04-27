import '../exports.dart';

class AppState {
  BangumiListState bangumiListState;

  AppState({
    BangumiListState bangumiListState,
  }) {
    this.bangumiListState = bangumiListState ?? new BangumiListState();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          bangumiListState == other.bangumiListState;

  @override
  int get hashCode => bangumiListState.hashCode;
}
