import 'package:flutter/cupertino.dart';
import 'package:mazadat/view/skip_screen.dart';
import 'package:mazadat/view/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.id : (context) => const SplashScreen(),
  SkipScreen.id: (context) => const SkipScreen(),

};