import 'package:flutter/material.dart';
import 'package:mazadat/view/home_layout/home_card.dart';
import '../../data_model.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/container_background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: homeModels.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      homeModels[index].screen,
                      arguments: homeModels[index],
                    );
                  },
                  child: HomeCard(
                    image: homeModels[index].imagePath,
                    title: homeModels[index].title,
                    subTitle: homeModels[index].subtitle ?? "",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}