import 'package:flutter/cupertino.dart';
import 'package:mazadat/view/home_before_login/home_before_login.dart';
import 'package:mazadat/view/splash_screen/skip_screen.dart';
import 'package:mazadat/view/splash_screen/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.id : (context) => const SplashScreen(),
  SkipScreen.id: (context) => const SkipScreen(),
  HomeBeforeLogin.id: (context) => const HomeBeforeLogin(),

};