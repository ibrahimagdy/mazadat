import 'package:flutter/cupertino.dart';
import 'package:mazadat/view/auth/sign_up_screen.dart';
import 'package:mazadat/view/details_screen/details_plate_screen.dart';
import 'package:mazadat/view/details_screen/plate_grid_screen.dart';
import 'package:mazadat/view/home_before_login/home_before_login.dart';
import 'package:mazadat/view/home_layout/home_layout.dart';
import 'package:mazadat/view/shopping_cart/my_purchases.dart';
import 'package:mazadat/view/shopping_cart/shopping_cart.dart';
import 'package:mazadat/view/splash_screen/skip_screen.dart';
import 'package:mazadat/view/splash_screen/splash_screen.dart';
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
};