import 'package:flutter/material.dart';
import 'package:mazadat/core/utils/routes.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: routes,
      theme: theme(),
    );
  }
  
}