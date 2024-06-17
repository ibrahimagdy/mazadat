import 'package:flutter/material.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/core/widgets/custom_app_bar.dart';
import 'package:mazadat/core/widgets/custom_drawer.dart';
import 'package:mazadat/core/widgets/home_list_tile.dart';
import 'package:mazadat/core/widgets/main_button.dart';
import 'package:mazadat/view/auth/login_screen.dart';
import 'package:mazadat/view/auth/sign_up_screen.dart';
import '../../constants.dart';
import '../home_layout/home_categories.dart';

class HomeBeforeLogin extends StatelessWidget {
  static String id = "HomeBeforeLogin";

  const HomeBeforeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const HomeListTile(),
          const HomeCategories(),
          Container(
            height: 120,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainButton(
                    color: primaryColor,
                    text: "تسحيل الدخول",
                    textStyle: theme()
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                    icon: "assets/icons/login_vector.svg",
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    }),
                MainButton(
                    color: grey,
                    text: "اشتراك",
                    textStyle: theme().textTheme.titleSmall,
                    textColor: Colors.black,
                    icon: "assets/icons/subscribe.svg",
                    onTap: () {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
