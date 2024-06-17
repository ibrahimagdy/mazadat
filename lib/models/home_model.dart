class HomeModel {
  final String imagePath;
  final String title;
  final String? subtitle;
  final String screen;

  HomeModel({
    required this.imagePath,
    required this.title,
    this.subtitle,
    required this.screen,
  });
}