import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazadat/core/widgets/drop_down_bar.dart';
import 'package:mazadat/core/widgets/plate_header_list_tile.dart';
import 'package:mazadat/view/plate_details/shopping_cart/my_purchases.dart';
import 'package:mazadat/view/plate_details/shopping_cart/shopping_cart.dart';

import '../../constants.dart';
import '../../core/utils/theme.dart';
import '../../core/widgets/custom_search_bar.dart';
import '../../core/widgets/plate_trailing_container.dart';
import '../../models/home_model.dart';

class PlateGridScreen extends StatefulWidget {
  static String id = "PlateGridScreen";
  const PlateGridScreen({super.key});

  @override
  State<PlateGridScreen> createState() => _PlateGridScreenState();
}

class _PlateGridScreenState extends State<PlateGridScreen> {
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
            Container(
              color:
                  isSearchVisible ? const Color(0XFFBF7E9A) : whiteBackGround,
              child: Column(
                children: [
                  DropDownBar(targetScreenId: PlateGridScreen.id),
                  isSearchVisible
                      ? const CustomSearchBar(
                          hintText: 'بحث برقم اللوحة',
                        )
                      : const PlateHeaderListTile(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/container_background.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:3/2,
                  ),
                  itemCount: args.plates?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final plate = args.plates?[index];
                    return Card(
                      color: whiteBackGround,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(plate!.imagePath),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  plate.price,
                                  style: theme().textTheme.titleMedium!.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  children: [
                                    SvgPicture.asset(plate.carIconPath),
                                    const Text(
                                      'عرض',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  children: [
                                    SvgPicture.asset(plate.shareIconPath),
                                    const Text(
                                      'مشاركة',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  children: [
                                    SvgPicture.asset(plate.shopIconPath),
                                    const Text(
                                      'شراء',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
