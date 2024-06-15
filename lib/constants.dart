import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/home_model.dart';

Color primaryColor = const Color(0xFFDF1731);
Color secondaryColor = const Color(0xFFF6F6F6);
Color whiteBackGround = const Color(0xFFFFFFFF);
Color blackColor = Colors.black;
Color darkGrey = Colors.grey;
Color grey = const Color(0XFFE9E9E9);
Color redColor = Colors.red;

// Fonts Used --------------------------------------------------------------------------
var arFont = GoogleFonts.inter(
    fontSize: largeTextSize, color: primaryColor, fontWeight: mainFontWeight);

var compFont = GoogleFonts.inter();

// Titles and MainButtons
const mainFontSize = 30.0;
const FontWeight mainFontWeight = FontWeight.bold;

// subTitles and subButtons
const subFontSize = 21.0;
const FontWeight subFontWeight = FontWeight.bold;

// Common writing text
const commonTextSize = 18.0;
const FontWeight commonTextWeight =
    FontWeight.w700; // or regular font (no weights used)

// Tiny text (sub texts)
const tinyTextSize = 15.0;
const FontWeight tinyTextWeight =
    FontWeight.w700; // or regular font (no weights used)

const extraTinyTextSize = 12.0;
const FontWeight extraTinyTextWeight =
    FontWeight.w500; // or regular font (no weights used)
// Special cases - extra large text
const largeTextSize = 27.0;

// Special cases - extra large text
const extraLargeTextSize = 30.0; // only used as regular font (no weights)

// Fonts New -------------------------------------------------------------------

const fTitleLarge = 28.0;
const fTitleMedium = 22.0;
const fTitleSmall = 18.0;

const fBodyLarge = 15.0;
const fBodyMedium = 12.0;
const fBodySmall = 10.0;

// Paddings Used -------------------------------------------------------------------------
const emptyScreenSecondaryPadding = 20.0;
const p51 = 51.0;
const p44 = 44.0;
const p32 = 32.0;
const p23 = 23.0;
const p16 = 16.0;
const p12 = 12.0;
const p7 = 7.0;

double constHorizontalPadding = 15.w;
double constVerticalPadding = 20.h;

// Button Sizes Used ---------------------------------------------------------------------
const mainButtonsSize = 60.0;
const commonButtonSize = 50.0;
const mediumButtonSize = 45.0;

// text form field ---------------------------------------------------------------

int maxLength = 25;

// animated container border color
const durationTime = 200;
// const addressListLength = 3;

const gridViewCrossAxisCount = 3;

int shopsNumber = 10;

const String imagePath = "assets/images";
const String iconsPath = "assets/icons";

final List<HomeModel> homeModels = [
  HomeModel(
    imagePath: "assets/images/ajman_plate.png",
    title: "لوحات عجمان",
    subtitle: "البيع المباشر",
  ),
  HomeModel(
    imagePath: "assets/images/sgarjah_plate.png",
    title: "لوحات الشارقة",
    subtitle: "البيع المباشر",
  ),
  HomeModel(
    imagePath: "assets/images/abu_dhabi_plate.png",
    title: "لوحات أبو ظبي",
    subtitle: "1س:14د",
  ),
  HomeModel(
    imagePath: "assets/images/om_elquwen_plate.png",
    title: "لوحات ام القيوين",
    subtitle: "البيع المباشر",
  ),
  HomeModel(
    imagePath: "assets/images/fojera_plate.png",
    title: "لوحات الفجيرة",
    subtitle: "البيع المباشر",
  ),
  HomeModel(
    imagePath: "assets/images/rak_plate.png",
    title: "لوحات رأس الخيمة",
    subtitle: "البيع المباشر",
  ),
  HomeModel(
    imagePath: "assets/images/mo3dat.png",
    title: "معدات",
    subtitle: "3ي:39د",
  ),
  HomeModel(
    imagePath: "assets/images/Various_categories.png",
    title: "بضائع متنوعة",
    subtitle: "3ي:39د",
  ),
  HomeModel(
    imagePath: "assets/images/Special_packages.png",
    title: "الباقات المميزة",
  ),
  HomeModel(
    imagePath: "assets/images/real_estate_uae_mazad.png",
    title: "مزادات الامارات العقاري",
    subtitle: "3ي:39د",
  ),
  HomeModel(
    imagePath: "assets/images/cars.png",
    title: "مركبات",
    subtitle: "3ي:39د",
  ),
  HomeModel(
    imagePath: "assets/images/Various_categories_2.png",
    title: "بضائع متنوعة",
    subtitle: "3ي:39د",
  ),
  HomeModel(
    imagePath: "assets/images/dubai_plate.png",
    title: "لوحات دبي",
  ),
  HomeModel(
    imagePath: "assets/images/rents_shops.png",
    title: "محلات للايجار",
    subtitle: "3ي:39د",
  ),
  HomeModel(
    imagePath: "assets/images/clock_jew.png",
    title: "ساعات وجوهرات ",
    subtitle: "3ي:39د",
  ),
];