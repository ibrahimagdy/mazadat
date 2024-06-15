class HomeModel {
  final String imagePath;
  final String title;
  final String? subtitle;

  HomeModel({
    required this.imagePath,
    required this.title,
    this.subtitle,
  });

}