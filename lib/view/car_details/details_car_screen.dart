import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../core/utils/theme.dart';
import '../../core/widgets/custom_search_bar.dart';
import '../../core/widgets/drop_down_bar.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';
import '../various_categories_details/following_mazad/following_mazad.dart';
import '../various_categories_details/following_mazad/mazad_result.dart';
import 'all_details_for_car.dart';
import 'car_grid_view.dart';

class DetailsCarScreen extends StatefulWidget {
  static String id = "DetailsCarScreen";

  const DetailsCarScreen({super.key});

  @override
  State<DetailsCarScreen> createState() => _DetailsCarScreenState();
}

class _DetailsCarScreenState extends State<DetailsCarScreen> {
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
            Container(
              color:
                  isSearchVisible ? const Color(0XFFBF7E9A) : whiteBackGround,
              child: Column(
                children: [
                  DropDownBar(targetScreenId: CarGridView.id),
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
                      Color(0XFFF7F2F4),
                      Color(0XFFEFE5E9),
                      Color(0XFFE7D6DD),
                      Color(0XFFDFC9D2),
                      Color(0XFFDAC1CC),
                    ])),
                child: ListView.builder(
                  itemCount: args.cars?.length,
                  itemBuilder: (context, index) {
                    final cars = args.cars?[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AllDetailsForCar.id,
                            arguments: args);
                      },
                      child: Card(
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
                                cars!.carImage,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cars.name,
                                      style: theme()
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: primaryColor,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      cars.modelNumber,
                                      style: theme()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            color: const Color(0XFF19478B),
                                          ),
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/hammer_icon.svg"),
                                        const SizedBox(width: 5),
                                        Text(
                                          cars.iconNumber,
                                          style: theme()
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      cars.price,
                                      style: theme()
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: const Color(0XFF4A4646),
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Text(
                                cars.time,
                                style: theme()
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(color: Colors.black),
                              ),
                              const SizedBox(width: 3),
                              SvgPicture.asset("assets/icons/clock_icon.svg"),
                            ],
                          ),
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
