import 'package:flutter/cupertino.dart';
import 'package:mazadat/view/auth/sign_up_screen.dart';
import 'package:mazadat/view/car_details/all_details_for_car.dart';
import 'package:mazadat/view/car_details/car_grid_view.dart';
import 'package:mazadat/view/car_details/details_car_screen.dart';
import 'package:mazadat/view/home_before_login/home_before_login.dart';
import 'package:mazadat/view/home_layout/home_layout.dart';
import 'package:mazadat/view/plate_details/details_plate_screen.dart';
import 'package:mazadat/view/plate_details/plate_grid_screen.dart';
import 'package:mazadat/view/plate_details/shopping_cart/my_purchases.dart';
import 'package:mazadat/view/plate_details/shopping_cart/shopping_cart.dart';
import 'package:mazadat/view/splash_screen/skip_screen.dart';
import 'package:mazadat/view/splash_screen/splash_screen.dart';
import 'package:mazadat/view/various_categories_details/details_various_categories_screen.dart';
import 'package:mazadat/view/various_categories_details/following_mazad/following_mazad.dart';
import 'package:mazadat/view/various_categories_details/following_mazad/mazad_result.dart';
import 'package:mazadat/view/various_categories_details/various_categories_listview_screen.dart';

import 'view/auth/login_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.id : (context) => const SplashScreen(),
  SkipScreen.id: (context) => const SkipScreen(),
  HomeBeforeLogin.id: (context) => const HomeBeforeLogin(),
  LoginScreen.id: (context) => const LoginScreen(),
  SignUpScreen.id: (context) => const SignUpScreen(),
  HomeLayout.id: (context) => const HomeLayout(),
  DetailsPlateScreen.id: (context) => const DetailsPlateScreen(),
  PlateGridScreen.id: (context) => const PlateGridScreen(),
  ShoppingCart.id: (context) => const ShoppingCart(),
  MyPurchases.id: (context) => const MyPurchases(),
  DetailsVariousCategoriesScreen.id: (context) =>
      const DetailsVariousCategoriesScreen(),
  VariousCategoriesListviewScreen.id: (context) =>
      const VariousCategoriesListviewScreen(),
  MazadResult.id: (context) => const MazadResult(),
  FollowingMazad.id: (context) => const FollowingMazad(),
  DetailsCarScreen.id: (context) => const DetailsCarScreen(),
  CarGridView.id: (context) => const CarGridView(),
  AllDetailsForCar.id: (context) => const AllDetailsForCar(),
};