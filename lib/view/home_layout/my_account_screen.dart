import 'package:flutter/material.dart';

import '../../core/widgets/home_list_tile.dart';
import '../../data_model.dart';
import 'home_categories.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  void _navigateToCategoryScreen(BuildContext context, int index) {
    Navigator.pushNamed(
      context,
      homeModels[index].screen,
      arguments: homeModels[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeListTile(),
        HomeCategories(onCategoryTap: _navigateToCategoryScreen),
      ],
    );
  }
}
