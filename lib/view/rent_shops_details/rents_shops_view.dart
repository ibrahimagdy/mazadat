import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../core/utils/theme.dart';
import '../../core/widgets/drop_down_bar.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';
import '../various_categories_details/following_mazad/following_mazad.dart';
import '../various_categories_details/following_mazad/mazad_result.dart';

class RentsShopsView extends StatelessWidget {
  static String id = "RentsShopsView";

  const RentsShopsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HomeModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/icons/restart_icon.svg"),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const DropDownBar(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0XFFF7F2F4),
                      Color(0XFFEFE5E9),
                      Color(0XFFE7D6DD),
                      Color(0XFFDFC9D2),
                      Color(0XFFDAC1CC),
                    ])),
                child: ListView.builder(
                  itemCount: args.rentShops?.length,
                  itemBuilder: (context, index) {
                    final rentShops = args.rentShops?[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: whiteBackGround,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              rentShops!.image,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    rentShops.name,
                                    style: theme()
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Color(0XFF3E75A4),
                                        ),
                                  ),
                                  Text(
                                    rentShops.displayFrom,
                                    style:
                                        theme().textTheme.bodyMedium!.copyWith(
                                              color: const Color(0XFF4A4646),
                                            ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        rentShops.time,
                                        style: theme()
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 3),
                                      SvgPicture.asset(
                                          "assets/icons/clock_icon.svg"),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${rentShops.displayNumbers} معروض ",
                                          style:
                                              theme().textTheme.headlineSmall),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            PlateTrailingContainer(
              firstContainerRouteName: FollowingMazad.id,
              textFirstContainer: 'متابعة',
              iconFirstContainer: 'assets/icons/follow_icon.svg',
              secondContainerRouteName: MazadResult.id,
              textSecondContainer: 'مزيداتي',
              iconSecondContainer: 'assets/icons/mazadty_icon.svg',
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
