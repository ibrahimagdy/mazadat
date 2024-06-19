import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/view/various_categories_details/details_various_categories_screen.dart';
import 'package:mazadat/view/various_categories_details/following_mazad/mazad_result.dart';

import '../../constants.dart';
import '../../core/widgets/custom_search_bar.dart';
import '../../core/widgets/drop_down_bar.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';
import 'following_mazad/following_mazad.dart';

class VariousCategoriesListviewScreen extends StatefulWidget {
  static String id = "VariousCategoriesGridScreen";

  const VariousCategoriesListviewScreen({super.key});

  @override
  State<VariousCategoriesListviewScreen> createState() =>
      _VariousCategoriesListviewScreenState();
}

class _VariousCategoriesListviewScreenState
    extends State<VariousCategoriesListviewScreen> {
  bool isSearchVisible = false;

  void toggleSearchVisibility() {
    setState(() {
      isSearchVisible = !isSearchVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HomeModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        actions: [
          SvgPicture.asset(
            "assets/icons/filter_icon.svg",
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: toggleSearchVisibility,
            child: isSearchVisible
                ? const Icon(Icons.search_off)
                : const Icon(Icons.search),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            DropDownBar(targetScreenId: DetailsVariousCategoriesScreen.id),
            Container(
              color:
                  isSearchVisible ? const Color(0XFFBF7E9A) : whiteBackGround,
              child: Column(
                children: [
                  isSearchVisible
                      ? const CustomSearchBar(
                          hintText: 'بحث',
                        )
                      : Container(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0XFFD1AEBE),
                    Color(0XFFDABDCA),
                    Color(0XFFE3CBD6),
                    Color(0XFFECDAE2),
                    Color(0XFFEEDDE4),
                  ],
                )),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: args.variousCategories?.length,
                  itemBuilder: (context, index) {
                    final variousCategories = args.variousCategories?[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: whiteBackGround,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/images/phone_list_view.png"),
                              Positioned(
                                right: 0,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(variousCategories!.modelNumber),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8, top: 10),
                            child: Text(
                              variousCategories.name,
                              style: theme()
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: primaryColor, fontSize: 18),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  variousCategories.price,
                                  style: theme().textTheme.bodyLarge!.copyWith(
                                        color: const Color(0XFF4A4646),
                                        fontSize: 14,
                                      ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/hammer_icon.svg"),
                                    Text(
                                      variousCategories.iconNumber,
                                      style:
                                          theme().textTheme.bodyLarge!.copyWith(
                                                color: const Color(0XFF4A4646),
                                                fontSize: 14,
                                              ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      variousCategories.time,
                                      style: theme()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            color: const Color(0XFF4A4646),
                                          ),
                                    ),
                                    const SizedBox(width: 5),
                                    SvgPicture.asset(
                                        "assets/icons/clock_icon.svg"),
                                  ],
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
