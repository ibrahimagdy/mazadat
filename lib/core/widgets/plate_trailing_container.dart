import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/theme.dart';

class PlateTrailingContainer extends StatelessWidget {
  final String firstContainerRouteName;
  final String textFirstContainer;
  final String iconFirstContainer;
  final String secondContainerRouteName;
  final String textSecondContainer;
  final String iconSecondContainer;
  final Color textColor;

  const PlateTrailingContainer(
      {super.key,
      required this.firstContainerRouteName,
      required this.textFirstContainer,
      required this.iconFirstContainer,
      required this.textSecondContainer,
      required this.iconSecondContainer,
      required this.secondContainerRouteName,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, firstContainerRouteName);
            },
            child: Container(
              height: 95,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFF616161)),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25)
                ),
                color: const Color(0XFFF3F1F1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textFirstContainer,
                    style: theme().textTheme.titleSmall!.copyWith(
                      fontSize: 18,
                          color: textColor,
                        ),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(iconFirstContainer),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, secondContainerRouteName);
            },
            child: Container(
              height: 95,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFF616161)),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25)
                ),
                color: const Color(0XFFF3F1F1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textSecondContainer,
                    style: theme().textTheme.titleSmall!.copyWith(
                      fontSize: 18,
                          color: textColor,
                        ),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(iconSecondContainer),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
