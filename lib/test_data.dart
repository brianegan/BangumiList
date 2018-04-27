import 'ui_framework.dart';

var testBangumiVO = new BangumiVO(
  title: "末日时在做什么? 有没有空? 没空拯救",
  coverUrl:
      "https://pic2.zhimg.com/ae1f3d38dee8c352823bfae4b5afa884_1200x500.jpg",
  updateTime: "每周日 00:30更新",
  updateEpisode: "第16话",
  following: true,
  updateCountDown: "倒计时 30s",
  episodes: [
    testEpisodeVO,
    testEpisodeVO,
    testEpisodeVO,
    testEpisodeVO,
  ],
);

var testEpisodeVO = new EpisodeVO("第16话", "好难办");
