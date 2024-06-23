import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/view/car_details/all_details_for_car.dart';

import '../../constants.dart';
import '../../core/widgets/custom_search_bar.dart';
import '../../core/widgets/drop_down_bar.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';
import '../various_categories_details/following_mazad/following_mazad.dart';
import '../various_categories_details/following_mazad/mazad_result.dart';
import 'details_car_screen.dart';

class CarGridView extends StatefulWidget {
  static String id = "CarGridView";

  const CarGridView({super.key});

  @override
  State<CarGridView> createState() => _CarGridViewState();
}

class _CarGridViewState extends State<CarGridView> {
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
                  DropDownBar(targetScreenId: DetailsCarScreen.id),
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
                  image: DecorationImage(
                    image: AssetImage('assets/images/container_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 4,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: args.cars?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final cars = args.cars?[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AllDetailsForCar.id,
                            arguments: args);
                      },
                      child: Card(
                        color: whiteBackGround,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        cars!.carImage,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 5),
                                        Text(
                                          cars.name,
                                          style: theme()
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: primaryColor,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/hammer_icon.svg",
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  cars.iconNumber,
                                                  style: theme()
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                        color: Colors.black,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  cars.time,
                                                  style: theme()
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                        color: Colors.black,
                                                      ),
                                                ),
                                                const SizedBox(width: 3),
                                                SvgPicture.asset(
                                                  "assets/icons/clock_icon.svg",
                                                  height: 20,
                                                ),
                                              ],
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
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
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
