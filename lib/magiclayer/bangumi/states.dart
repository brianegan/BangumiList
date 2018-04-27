import 'package:bangumi_list/datalayer/models.dart';

class BangumiListState {
  List<BangumiVO> list;

  BangumiListState({
    this.list: const [],
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BangumiListState &&
          runtimeType == other.runtimeType &&
          list == other.list;

  @override
  int get hashCode => list.hashCode;
}
