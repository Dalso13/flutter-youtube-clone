import 'package:flutter/material.dart';
import 'package:youtube_clone/model/movie_data.dart';
import 'package:youtube_clone/model/movie_repository.dart';

class YouTubeView extends StatefulWidget {
  const YouTubeView({super.key});

  @override
  State<YouTubeView> createState() => _YouTubeViewState();
}

class _YouTubeViewState extends State<YouTubeView> {
  final repository = MovieRepository().getListMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('YouTube', style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: [
                appBarIcon(Icons.connected_tv),
                appBarIcon(Icons.notification_add),
                appBarIcon(Icons.search),
                appBarIcon(Icons.account_circle),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: IconButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white10)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.explore,
                            size: 30,
                          ),
                        )),
                  ),
                  scrollView('전체'),
                  scrollView('게임'),
                  scrollView('뉴스'),
                  scrollView('실시간'),
                  scrollView('믹스'),
                  scrollView('요리'),
                  scrollView('스포츠'),
                  scrollView('정치'),
                  scrollView('어린이'),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: repository.map((e) => mainContent(e)).toList(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle:
        TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_display),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.control_point), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'home',
          ),
        ],
        backgroundColor: Colors.black12,
      ),
    );
  }

  // 상단바 담당
  Widget appBarIcon(IconData icon) {
    return IconButton(
      icon: Icon(
        icon,
        size: 30,
      ),
      onPressed: () {},
    );
  }

  // 옵션 담당
  Widget scrollView(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white10)),
          onPressed: () {},
          child: Text(text, style: const TextStyle(color: Colors.white))),
    );
  }

  // 영상 담당
  Widget mainContent(MovieData data) {
    return SizedBox(
        child: Column(
      children: [
        Stack(children: [
          Image.network(
            data.img,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.account_circle, color: Colors.white),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            data.chanel,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 10),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              '· 조회수 ${data.views}',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 10),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              PopupMenuButton<String>(
                  iconSize: 20,
                  iconColor: Colors.white,
                  itemBuilder: (context) => [
                        const PopupMenuItem<String>(
                          child: Text('신고'),
                          value: '신고',
                        )
                      ])
            ],
          ),
        )
      ],
    ));
  }
}
