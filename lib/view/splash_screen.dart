import 'package:flutter/material.dart';
import 'package:mazadat/view/skip_screen.dart';

class SplashScreen extends StatefulWidget{
  static String id = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, SkipScreen.id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}