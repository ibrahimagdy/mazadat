import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../core/utils/theme.dart';

class FollowingMazad extends StatelessWidget {
  static String id = "FollowingMazad";

  const FollowingMazad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("المفضلة"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/icons/restart_icon.svg"),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0XFFF7F1F4),
                    Color(0XFFEFE5E9),
                    Color(0XFFE7D7DE),
                    Color(0XFFDEC9D2),
                    Color(0XFFDAC1CC),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "لا يوجد عناصر للمشاهدة",
                  style: theme()
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: primaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
