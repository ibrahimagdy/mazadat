import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazadat/core/widgets/custom_list_tile_drawer.dart';

import '../../constants.dart';
import '../utils/theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerItems = [
      const CustomListTileDrawer(
        icon: "assets/icons/home_icon.svg",
        title: "الرئيسية",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/account_icon.svg",
        title: "حسابي",
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "شارك واكتشف",
              style: TextStyle(
                fontSize: 16,
                color: Color(0XFF4A4646),
              ),
            ),
          ],
        ),
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/location_icon.svg",
        title: "موقعنا",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/Partnership_icon.svg",
        title: "شراكة مع الإمارات",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/services_icon.svg",
        title: "خدمات المزادات",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/transport_icon.svg",
        title: "اسطول النقل",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/certificate_icon.svg",
        title: "الجوائز والشهادات",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/sell_car_icon.svg",
        title: "بيع مركبتك",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/news_icon.svg",
        title: "آخر اخبارنا",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/responsability_icon.svg",
        title: "المسؤولية المجتمعية",
      ),
      const CustomListTileDrawer(
        icon: "assets/icons/contact_icon.svg",
        title: "للتواصل",
      ),
    ];
    return Drawer(
      backgroundColor: whiteBackGround,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListTile(
                leading: Image.asset("assets/images/drawer_profile.png"),
                title: Text(
                  "Donia Muhmd Muhmd",
                  style: theme().textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "عرض الملف الشخصي",
                      style: theme().textTheme.labelSmall,
                    ),
                    const SizedBox(width: 3),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/drawer_background.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 22),
                  title: Text(
                    'قم بالإيداع الآن',
                    style: theme().textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    'ابدأ رحلة المزايدة الخاصة بك!',
                    style: theme().textTheme.bodyLarge!.copyWith(
                          fontSize: 13,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                    color: whiteBackGround,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: drawerItems,
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              color: const Color(0XFFFAF4E8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "شاركنا رأيك",
                    style: theme().textTheme.headlineSmall,
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/star_icon.svg"),
                        const SizedBox(width: 8),
                        Text(
                          "قيم التطبيق",
                          style: theme().textTheme.titleLarge!.copyWith(
                              color: whiteBackGround,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 50, width: double.infinity, color: whiteBackGround),
          ],
        ),
      ),
    );
  }
}
