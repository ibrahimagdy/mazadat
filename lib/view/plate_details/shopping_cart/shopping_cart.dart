import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/utils/theme.dart';

class ShoppingCart extends StatelessWidget{
  static String id = "ShoppingCart";

  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "عربة المشتريات"
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/icons/restart_icon.svg"),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFFF1DFE7),
              Color(0XFFE4C1D0),
              Color(0XFFD69FB7),
              Color(0XFFC980A0),
              Color(0XFFC06D91),
            ],
          )
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            margin: const EdgeInsets.all(70),
            decoration:  BoxDecoration(
              color: const Color(0XFF614E4E),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "لا توجد لوحة في عربه المشتريات",
                  style: theme().textTheme.headlineSmall!.copyWith(
                    color: whiteBackGround,
                  ),
                ),
                const Divider(
                  height: 25,
                  thickness: 2,
                ),
                Text(
                  "مواصلة التسوق",
                  style: theme().textTheme.headlineSmall!.copyWith(
                    color: const Color(0XFF4486EA),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}