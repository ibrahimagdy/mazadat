import 'package:flutter/cupertino.dart';
import 'package:mazadat/view/auth/sign_up_screen.dart';
import 'package:mazadat/view/home_before_login/home_before_login.dart';
import 'package:mazadat/view/home_layout/home_layout.dart';
import 'package:mazadat/view/sgarjah_screen/sgarjah_screen.dart';
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
  SgarjahScreen.id: (context) => const SgarjahScreen(),
};