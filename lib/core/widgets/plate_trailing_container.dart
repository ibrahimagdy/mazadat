import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../utils/theme.dart';

class PlateTrailingContainer extends StatelessWidget{
  const PlateTrailingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0XFF616161)),
        borderRadius: BorderRadius.circular(25),
        color: const Color(0XFFF3F1F1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "مشترياتي",
                  style: theme().textTheme.titleSmall!.copyWith(
                      fontSize: 18,
                      color: primaryColor
                  ),
                ),
                const SizedBox(width: 8),

                SvgPicture.asset("assets/icons/cart_icon.svg")
              ],
            ),
          ),
          const VerticalDivider(
              color: Color(0XFF616161)
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "عربة مشتريات",
                  style: theme().textTheme.titleSmall!.copyWith(
                      fontSize: 18,
                      color: primaryColor
                  ),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset("assets/icons/shop_car.svg")
              ],
            ),
          ),
        ],
      ),
    );

  }

}