import 'package:youtube_clone/model/movie_data.dart';

class MovieRepository {
  List<MovieData> getListMovie() {
    return [
      MovieData(
        title: "눈내리는 겨울",
        img:
            'https://img.freepik.com/free-vector/hand-drawn-flat-winter-landscape-illustration_23-2149149134.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703116800&semt=sph',
        chanel: "장동완",
        views: "20만",
        video: "1",
      ),
      MovieData(
        title: "그랜드 캐니언",
        img:
            'https://post-phinf.pstatic.net/MjAyMjAxMThfNDYg/MDAxNjQyNDg1ODA2NDA0.Zk66qbKS2RLfeTkWzB8_zuBWvCXGBZ9buqc-mh4e97Eg.0a0QGxjDcN_qtPMUtL7FMmYJwOGaQQTsFP-LwsoNH0kg.JPEG/1.JPG?type=w800_q75',
        chanel: "장동완",
        views: "5만",
        video: "1",
      ),
      MovieData(
        title: "르세라핌",
        img:
            'https://isplus.com/data/isp/image/2023/11/29/isp20231129000028.800x.0.jpg',
        chanel: "장동완",
        views: "1500만",
        video: "1",
      ),
      MovieData(
        title: "르세라핌",
        img:
            'https://img.marieclairekorea.com/2023/10/mck_653b75e6cabd7.jpg',
        chanel: "장동완",
        views: "1500만",
        video: "1",
      ),
    ];
  }
}
