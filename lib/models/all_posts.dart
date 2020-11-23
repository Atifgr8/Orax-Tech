class AllPosts {
  final int id;
  final int userId;
  final String title;
  final String body;
  AllPosts({this.id, this.userId, this.title, this.body});

  factory AllPosts.fromJson(Map<String, dynamic> json) {
    return AllPosts(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}