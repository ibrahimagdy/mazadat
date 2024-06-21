import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/core/widgets/custom_search_bar.dart';
import 'package:mazadat/view/plate_details/plate_grid_screen.dart';
import 'package:mazadat/view/plate_details/shopping_cart/my_purchases.dart';
import 'package:mazadat/view/plate_details/shopping_cart/shopping_cart.dart';

import '../../core/widgets/drop_down_bar.dart';
import '../../core/widgets/plate_header_list_tile.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';

class DetailsPlateScreen extends StatefulWidget {
  static String id = "DetailsPlateScreen";
  const DetailsPlateScreen({super.key});

  @override
  State<DetailsPlateScreen> createState() => DetailsPlateScreenState();
}

class DetailsPlateScreenState extends State<DetailsPlateScreen> {
  bool isContainerVisible = false;
  bool isSearchVisible = false;

  void toggleContainerVisibility() {
    setState(() {
      isContainerVisible = !isContainerVisible;
    });
  }

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
              color: isSearchVisible ? const Color(0XFFBF7E9A) : whiteBackGround,
              child: Column(
                children: [
                  DropDownBar(targetScreenId: PlateGridScreen.id),
                  isSearchVisible
                      ? CustomSearchBar(
                          hintText: 'بحث برقم اللوحة',
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        )
                      : const PlateHeaderListTile(),
                ],
              ),
            ),
            Visibility(
              visible: isContainerVisible,
              child: Container(
                height: 42,
                color: const Color(0XFFD9D9D9),
                child: Column(
                  children: [
                    const SizedBox(height: 2),
                    Container(
                      color: whiteBackGround,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/selecting_plate_number.svg"),
                              const SizedBox(width: 8),
                              Text(
                                "68,000 درهم",
                                style: theme().textTheme.titleMedium!.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/icons/car_plate_icon.svg"),
                                const SizedBox(width: 15),
                                SvgPicture.asset("assets/icons/share_plate_icon.svg"),
                                const SizedBox(width: 15),
                                SvgPicture.asset("assets/icons/shop_plate_icon.svg"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0XFFD9D9D9),
                child: ListView.builder(
                  itemCount: args.plates?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final plate = args.plates?[index];
                    return Column(
                      children: [
                        const SizedBox(height: 2),
                        Container(
                          color: whiteBackGround,
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 3),
                            title: Row(
                              children: [
                                SvgPicture.asset(plate!.imagePath),
                                const SizedBox(width: 8),
                                Text(
                                  plate.price,
                                  style: theme().textTheme.titleMedium!.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            trailing: GestureDetector(
                              onTap: toggleContainerVisibility,
                              child: const Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            PlateTrailingContainer(
              firstContainerRouteName: MyPurchases.id,
              textFirstContainer: 'مشترياتي',
              iconFirstContainer: 'assets/icons/cart_icon.svg',
              secondContainerRouteName: ShoppingCart.id,
              textSecondContainer: 'عربة مشتريات',
              iconSecondContainer: 'assets/icons/shop_car.svg',
              textColor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
