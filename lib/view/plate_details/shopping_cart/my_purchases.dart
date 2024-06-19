import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/constants.dart';

import '../../../core/utils/theme.dart';

class MyPurchases extends StatelessWidget {
  static String id = "MyPurchases";
  const MyPurchases({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("مشترياتي"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SvgPicture.asset("assets/icons/restart_icon.svg"),
            )
          ],
        ),
        body: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              labelStyle: theme().textTheme.headlineSmall,
              tabs: const [
                Tab(text: "البيع المباشر"),
                Tab(text: "مزاد"),
              ],
            ),
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
                child: TabBarView(
                  children: [
                    Center(
                      child: Text(
                        "لا يوجد عناصر في مشترياتي",
                        style: theme().textTheme.headlineSmall!.copyWith(
                          color: primaryColor
                        ),
                        ),
                    ),
                    Center(
                      child: Text(
                        "لا يوجد عناصر في مشترياتي",
                        style: theme().textTheme.headlineSmall!.copyWith(
                          color: primaryColor
                        ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
