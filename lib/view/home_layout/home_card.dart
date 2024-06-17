import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/utils/theme.dart';

class HomeCard extends StatelessWidget{
  final String image;
  final String title;
  final String subTitle;

  const HomeCard({super.key, required this.image, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage(image),
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
                  title,
                  style: theme().textTheme.titleSmall,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.0),
                Text(
                    subTitle ?? "",
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

  }

}