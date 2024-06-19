import 'package:flutter/material.dart';

import '../../core/widgets/home_list_tile.dart';
import 'home_categories.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeListTile(),
        HomeCategories(),
      ],
    );
  }
}
