import 'package:flutter/material.dart';
import 'package:mazadat/view/home_layout/home_card.dart';
import '../../models/home_model.dart';
import '../sgarjah_screen/sgarjah_screen.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HomeModel> homeModels = [
      HomeModel(
        imagePath: "assets/images/ajman_plate.png",
        title: "لوحات عجمان",
        subtitle: "البيع المباشر",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/sgarjah_plate.png",
        title: "لوحات الشارقة",
        subtitle: "البيع المباشر",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/abu_dhabi_plate.png",
        title: "لوحات أبو ظبي",
        subtitle: "1س:14د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/om_elquwen_plate.png",
        title: "لوحات ام القيوين",
        subtitle: "البيع المباشر",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/fojera_plate.png",
        title: "لوحات الفجيرة",
        subtitle: "البيع المباشر",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/rak_plate.png",
        title: "لوحات رأس الخيمة",
        subtitle: "البيع المباشر",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/mo3dat.png",
        title: "معدات",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/Various_categories.png",
        title: "بضائع متنوعة",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/Special_packages.png",
        title: "الباقات المميزة",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/real_estate_uae_mazad.png",
        title: "مزادات الامارات العقاري",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/cars.png",
        title: "مركبات",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/Various_categories_2.png",
        title: "بضائع متنوعة",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/dubai_plate.png",
        title: "لوحات دبي",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/rents_shops.png",
        title: "محلات للايجار",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
      HomeModel(
        imagePath: "assets/images/clock_jew.png",
        title: "ساعات وجوهرات ",
        subtitle: "3ي:39د",
        screen: SgarjahScreen.id,
      ),
    ];
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/container_background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: homeModels.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      homeModels[index].screen,
                      arguments: homeModels[index],
                    );
                  },
                  child: HomeCard(
                    image: homeModels[index].imagePath,
                    title: homeModels[index].title,
                    subTitle: homeModels[index].subtitle ?? "",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}