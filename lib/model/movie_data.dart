class MovieData {
  String title,img,chanel,views,video;

//<editor-fold desc="Data Methods">
  MovieData({
    required this.title,
    required this.img,
    required this.chanel,
    required this.views,
    required this.video,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieData &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          img == other.img &&
          chanel == other.chanel &&
          views == other.views &&
          video == other.video);

  @override
  int get hashCode =>
      title.hashCode ^
      img.hashCode ^
      chanel.hashCode ^
      views.hashCode ^
      video.hashCode;

  @override
  String toString() {
    return 'MovieData{' +
        ' title: $title,' +
        ' img: $img,' +
        ' chanel: $chanel,' +
        ' views: $views,' +
        ' video: $video,' +
        '}';
  }

  MovieData copyWith({
    String? title,
    String? img,
    String? chanel,
    String? views,
    String? video,
  }) {
    return MovieData(
      title: title ?? this.title,
      img: img ?? this.img,
      chanel: chanel ?? this.chanel,
      views: views ?? this.views,
      video: video ?? this.video,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'img': this.img,
      'chanel': this.chanel,
      'views': this.views,
      'video': this.video,
    };
  }

  factory MovieData.fromMap(Map<String, dynamic> map) {
    return MovieData(
      title: map['title'] as String,
      img: map['img'] as String,
      chanel: map['chanel'] as String,
      views: map['views'] as String,
      video: map['video'] as String,
    );
  }

//</editor-fold>
}