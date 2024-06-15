import 'package:flutter/material.dart';

import '../../core/theme.dart';

class HomeBeforeLogin extends StatelessWidget{
  static String id = "HomeBeforeLogin";

  const HomeBeforeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "الامارات للمزادات"
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Text(
              "English",
              style: theme().textTheme.titleMedium,
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [

        ],
      ),
    );
  }

}