import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/core/widgets/drop_down_bar.dart';
import 'package:mazadat/view/various_categories_details/various_categories_listview_screen.dart';

import '../../core/widgets/custom_search_bar.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';
import 'following_mazad/following_mazad.dart';
import 'following_mazad/mazad_result.dart';

class DetailsVariousCategoriesScreen extends StatefulWidget {
  static String id = "DetailsVariousCategoriesScreen";

  const DetailsVariousCategoriesScreen({super.key});

  @override
  State<DetailsVariousCategoriesScreen> createState() =>
      _DetailsVariousCategoriesScreenState();
}

class _DetailsVariousCategoriesScreenState
    extends State<DetailsVariousCategoriesScreen> {
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
      resizeToAvoidBottomInset: false,
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
            DropDownBar(targetScreenId: VariousCategoriesListviewScreen.id),
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
                color: const Color(0XFFD9D9D9),
                child: ListView.builder(
                  itemCount: args.variousCategories?.length,
                  itemBuilder: (context, index) {
                    final variousCategories = args.variousCategories?[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: whiteBackGround,
                      child: ListTile(
                        leading: Image.asset(variousCategories!.image),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              variousCategories.name,
                              style: theme().textTheme.titleMedium!.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              variousCategories.modelNumber,
                              style: theme().textTheme.labelLarge!.copyWith(
                                    color: const Color(0XFF19478B),
                                  ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/hammer_icon.svg"),
                                Text(
                                  variousCategories.iconNumber,
                                  style: theme()
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              variousCategories.price,
                              style: theme().textTheme.titleMedium!.copyWith(
                                  color: const Color(0XFF4A4646),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              variousCategories.time,
                              style: theme()
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(width: 3),
                            SvgPicture.asset("assets/icons/clock_icon.svg")
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
