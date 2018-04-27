import 'base.dart';

class BangumiVO implements VO {
  final String title;
  final String coverUrl;
  final String updateTime;
  final String updateEpisode;
  final bool following;
  final String updateCountDown;
  final List<EpisodeVO> episodes;

  BangumiVO({
    this.title: "",
    this.coverUrl: "",
    this.updateTime: "",
    this.updateEpisode: "",
    this.updateCountDown: "",
    this.following: false,
    this.episodes: const [],
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BangumiVO &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          coverUrl == other.coverUrl &&
          updateTime == other.updateTime &&
          updateEpisode == other.updateEpisode &&
          following == other.following &&
          updateCountDown == other.updateCountDown &&
          episodes == other.episodes;

  @override
  int get hashCode =>
      title.hashCode ^
      coverUrl.hashCode ^
      updateTime.hashCode ^
      updateEpisode.hashCode ^
      following.hashCode ^
      updateCountDown.hashCode ^
      episodes.hashCode;
}

class EpisodeVO implements VO {
  final String index; //第XX集
  final String title;

  EpisodeVO(this.index, this.title);
}
