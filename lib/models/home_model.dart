import 'package:mazadat/models/plate_model.dart';
import 'package:mazadat/models/various_categories_model.dart';

class HomeModel {
  final String imagePath;
  final String title;
  final String? subtitle;
  final String screen;
  final List<PlateData>? plates;
  final List<VariousCategoriesModel>? variousCategories;

  HomeModel({
    required this.imagePath,
    required this.title,
    this.subtitle,
    required this.screen,
      this.plates,
      this.variousCategories});
}