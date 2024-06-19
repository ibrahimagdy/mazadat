import 'package:mazadat/models/various_categories_model.dart';
import 'package:mazadat/view/plate_details/details_plate_screen.dart';
import 'package:mazadat/view/various_categories_details/details_various_categories_screen.dart';

import 'models/home_model.dart';
import 'models/plate_model.dart';

final List<HomeModel> homeModels = [
  HomeModel(
    imagePath: "assets/images/ajman_plate.png",
    title: "لوحات عجمان",
    subtitle: "البيع المباشر",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/sgarjah_plate.png",
    title: "لوحات الشارقة",
    subtitle: "البيع المباشر",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/abu_dhabi_plate.png",
    title: "لوحات أبو ظبي",
    subtitle: "1س:14د",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/om_elquwen_plate.png",
    title: "لوحات ام القيوين",
    subtitle: "البيع المباشر",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/fojera_plate.png",
    title: "لوحات الفجيرة",
    subtitle: "البيع المباشر",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/rak_plate.png",
    title: "لوحات رأس الخيمة",
    subtitle: "البيع المباشر",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/mo3dat.png",
    title: "معدات",
    subtitle: "3ي:39د",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/Various_categories.png",
    title: "بضائع متنوعة",
    subtitle: "3ي:39د",
    screen: DetailsVariousCategoriesScreen.id,
    variousCategories: List.generate(
      15,
      (index) => VariousCategoriesModel(
        name: "هواتف متحركة",
        modelNumber: "تسلل #409650",
        iconNumber: " :4",
        price: "550 درهم",
        time: "30د:27ث",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/Special_packages.png",
    title: "الباقات المميزة",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/real_estate_uae_mazad.png",
    title: "مزادات الامارات العقاري",
    subtitle: "3ي:39د",
    screen: DetailsVariousCategoriesScreen.id,
    variousCategories: List.generate(
      15,
      (index) => VariousCategoriesModel(
        name: "هواتف متحركة",
        modelNumber: "تسلل #409650",
        iconNumber: " :4",
        price: "550 درهم",
        time: "30د:27ث",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/cars.png",
    title: "مركبات",
    subtitle: "3ي:39د",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/Various_categories_2.png",
    title: "بضائع متنوعة",
    subtitle: "3ي:39د",
    screen: DetailsVariousCategoriesScreen.id,
    variousCategories: List.generate(
      15,
      (index) => VariousCategoriesModel(
        name: "هواتف متحركة",
        modelNumber: "تسلل #409650",
        iconNumber: " :4",
        price: "550 درهم",
        time: "30د:27ث",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/dubai_plate.png",
    title: "لوحات دبي",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/rents_shops.png",
    title: "محلات للايجار",
    subtitle: "3ي:39د",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/clock_jew.png",
    title: "ساعات وجوهرات ",
    subtitle: "3ي:39د",
    screen: DetailsPlateScreen.id,
    plates: List.generate(
      15,
          (index) => PlateData(
        imagePath: "assets/images/shargah_tile.svg",
        price: "68,000 درهم",
        carIconPath: "assets/icons/car_plate_icon.svg",
        shareIconPath: "assets/icons/share_plate_icon.svg",
        shopIconPath: "assets/icons/shop_plate_icon.svg",
      ),
    ),
  ),
];
