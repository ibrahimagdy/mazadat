import 'package:flutter/material.dart';
import 'package:mazadat/constants/routes.dart';
import 'package:mazadat/view/splash_screen.dart';

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
      routes: routes
    );
  }
  
}