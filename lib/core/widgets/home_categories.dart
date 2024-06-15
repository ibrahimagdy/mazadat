import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/theme.dart';

class HomeCategories extends StatelessWidget{
  const HomeCategories({super.key});

  @override
  Widget build(Object context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                AssetImage("assets/images/container_background.png"),
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
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(homeModels[index].imagePath),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              homeModels[index].title,
                              style: theme().textTheme.titleSmall,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                                homeModels[index].subtitle ?? "",
                                textDirection: TextDirection.rtl,
                                style: theme().textTheme.titleMedium!.copyWith(
                                    color: primaryColor
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
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