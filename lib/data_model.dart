import 'package:mazadat/models/car_model.dart';
import 'package:mazadat/models/rent_shops_model.dart';
import 'package:mazadat/models/various_categories_model.dart';
import 'package:mazadat/view/car_details/details_car_screen.dart';
import 'package:mazadat/view/plate_details/details_plate_screen.dart';
import 'package:mazadat/view/rent_shops_details/rents_shops_view.dart';
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
        image: "assets/images/phone_list_tile.png",
        listviewImage: "assets/images/phone_list_view.png",
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
        image: "assets/images/phone_list_tile.png",
        listviewImage: "assets/images/phone_list_view.png",
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
    screen: DetailsCarScreen.id,
    cars: List.generate(
        15,
        (index) => CarModel(
              carImage: "assets/images/car_img.png",
              name: "مرسيدس GT 63 s 2019",
              modelNumber: "تسلل #409650",
              iconNumber: " :4",
              price: "280.000 درهم",
              time: "30د:27ث",
              fullImageCar: "assets/images/full_image_car.png",
              sellDate: "6/6/2024",
              sellTime: "PM PDT 12:00",
              restTime: "6d 9h 53m",
              estimateSaleValue: '33\$635.00',
              odometer: "3.189 MI(ACTUAL)",
              typeTitleDeed: "MO - SALVAGE",
              statusTitleDeed: "سند ملكية جاهز للاستلام",
              sellName: "CO - RANCHO",
              importantPoints: "Enhanced Vehicles",
              damages: "ALL OVER",
              sellerName: "HERTZ",
              vehicleIdentificationNumber: "******3GKALPEG2RL",
              writePattern: "N/A",
              carType: "البحث عن السيارات فى هذا الموقع",
              carColor: "BLACK",
              engineType: "1.5L 4",
              drive: "Front-Wheel Drive",
              cylinders: "4",
              carbonDioxideTransport: "AUTOMATIC",
              fuel: "GAS",
              keys: "لا",
              notes: "N\A",
              lastUpdated: "05\29\2024, 1:01 am",
              currentCover: "0\$",
              buyNow: "5,400\$",
            )),
  ),
  HomeModel(
    imagePath: "assets/images/Various_categories_2.png",
    title: "بضائع متنوعة",
    subtitle: "3ي:39د",
    screen: DetailsVariousCategoriesScreen.id,
    variousCategories: List.generate(
      15,
      (index) => VariousCategoriesModel(
        image: "assets/images/phone_list_tile.png",
        listviewImage: "assets/images/phone_list_view.png",
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
    screen: RentsShopsView.id,
    rentShops: List.generate(
      15,
      (index) => RentShopsModel(
          image: "assets/images/rent_shop_img.png",
          name: "هيئة الطرق والمواصلات",
          displayFrom: "معروضة من قبل :",
          time: "30د:27ث",
          displayNumbers: "9"),
    ),
  ),
  HomeModel(
    imagePath: "assets/images/clock_jew.png",
    title: "ساعات وجوهرات ",
    subtitle: "3ي:39د",
    screen: DetailsVariousCategoriesScreen.id,
    variousCategories: List.generate(
      15,
      (index) => VariousCategoriesModel(
        image: "assets/images/phone_list_tile.png",
        listviewImage: "assets/images/phone_list_view.png",
        name: "هواتف متحركة",
        modelNumber: "تسلل #409650",
        iconNumber: " :4",
        price: "550 درهم",
        time: "30د:27ث",
      ),
    ),
  ),
];
