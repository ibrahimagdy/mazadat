import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/widgets/custom_app_bar.dart';
import 'package:mazadat/core/widgets/custom_drawer.dart';
import 'home_categories.dart';
import '../../core/widgets/home_list_tile.dart';

class HomeLayout extends StatelessWidget{
  static String id = "home";

  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: const Column(
        children: [
          HomeListTile(),
          HomeCategories(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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