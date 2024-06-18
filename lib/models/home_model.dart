import 'package:mazadat/models/plate_model.dart';

class HomeModel {
  final String imagePath;
  final String title;
  final String? subtitle;
  final String screen;
  final List<PlateData> plates;


  HomeModel({
    required this.imagePath,
    required this.title,
    this.subtitle,
    required this.screen,
    required this.plates,
  });
}