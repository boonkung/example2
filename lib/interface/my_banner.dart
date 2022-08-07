class MyBanner {
  final int id;
  final String image;
  final String? link;
  final String title;

  MyBanner({
    required this.id,
    required this.image,
    this.link,
    required this.title,
  });
}
