import 'package:flutter/material.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/view/home_before_login/home_before_login.dart';

class SkipScreen extends StatelessWidget {
  static String id = "SkipScreen";
  const SkipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/skip_screen.png",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, HomeBeforeLogin.id);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.keyboard_arrow_up),
                    Text(
                      "تخطي",
                      style: theme().textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
