import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/widgets/custom_app_bar.dart';
import 'package:mazadat/core/widgets/custom_drawer.dart';
import 'package:mazadat/view/home_layout/my_account_screen.dart';
import 'package:mazadat/view/plate_details/shopping_cart/my_purchases.dart';
import 'package:mazadat/view/various_categories_details/following_mazad/following_mazad.dart';
import 'package:mazadat/view/various_categories_details/following_mazad/mazad_result.dart';

class HomeLayout extends StatefulWidget {
  static String id = "home";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => HomeLayoutState();
}

class HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  final List<Widget> _screens = [
    const MyAccountScreen(),
    const MyPurchases(),
    const MazadResult(),
    const FollowingMazad(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteBackGround,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/acc_icon.svg"),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/cart_icon.svg"),
            label: 'مشترياتي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/mazadty_icon.svg"),
            label: 'مزاداتي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/follow_icon.svg"),
            label: 'متابعة',
          ),
        ],
      ),
    );
  }
}
