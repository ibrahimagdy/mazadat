import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/core/widgets/custom_sign_in_button.dart';
import 'package:mazadat/core/widgets/main_button.dart';
import 'package:mazadat/view/auth/sign_up_screen.dart';

import '../../core/functions/show_dialog.dart';
import '../../core/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static String id = "LoginScreen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: whiteBackGround,
        title: Text(
          "Login",
          style: theme().textTheme.displaySmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: mediaQuery.height * 0.02),
            TextFormFieldCustom(
              context: context,
              controller: emailController,
              hintText: "Enter your email",
              prefixIcon: SvgPicture.asset(
                "assets/icons/email.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            TextFormFieldCustom(
              context: context,
              controller: passwordController,
              hintText: "Enter your password",
              password: !isPasswordVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              prefixIcon: SvgPicture.asset(
                "assets/icons/password.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: theme().textTheme.labelMedium!.copyWith(
                          color: primaryColor,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            MainButton(
              color: primaryColor,
              text: "Login",
              textStyle: theme()
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              onTap: () {
                showConfirmationDialog(
                    context,
                    "Yeay! Welcome Back",
                    "Once again you login successfully into medidoc app",
                    "Go to home", () {
                  //Navigator.pushNamed(context, LoginScreen.id);
                });
              },
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don’t have an account? ",
                    style: theme().textTheme.bodyMedium!.copyWith(
                          color: const Color(0xFF717784),
                        ),
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: theme().textTheme.bodyMedium!.copyWith(
                          color: primaryColor,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    endIndent: 8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    indent: 8,
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.height * 0.03),
            CustomSignInButton(
              icon: SvgPicture.asset("assets/icons/Google.svg"),
              text: "Sign in with Google",
            ),
            const SizedBox(height: 14),
            const CustomSignInButton(
              icon: Icon(
                Icons.apple,
                color: Colors.black,
              ),
              text: "Sign in with Apple",
            ),
            const SizedBox(height: 14),
            const CustomSignInButton(
              icon: Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              text: "Sign in with Facebook",
            ),
          ],
        ),
      ),
    );
  }
}
