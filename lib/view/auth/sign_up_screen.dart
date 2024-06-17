import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/view/auth/login_screen.dart';

import '../../constants.dart';
import '../../core/functions/show_dialog.dart';
import '../../core/utils/theme.dart';
import '../../core/widgets/custom_check_box.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/main_button.dart';

class SignUpScreen extends StatefulWidget {
  static String id = "SignUpScreen";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Sign Up",
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
              controller: nameController,
              hintText: "Enter your name",
              prefixIcon: SvgPicture.asset(
                "assets/icons/User-Outline.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
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
            SizedBox(height: mediaQuery.height * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(width: mediaQuery.width * 0.02),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            const TextSpan(
                              text: "I agree to the medidoc ",
                              style: TextStyle(color: Color(0XFF3B4453)),
                            ),
                            TextSpan(
                              onEnter: (event) {},
                              text: "Terms of Service ",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: "and ",
                              style: TextStyle(color: Color(0XFF3B4453)),
                            ),
                            TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  onEnter: (event) {},
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: mediaQuery.height * 0.03),
            MainButton(
              color: primaryColor,
              text: "Sign Up",
              textStyle: theme()
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              onTap: () {
                showConfirmationDialog(
                    context,
                    "Success",
                    "Your account has been successfully registered",
                    "Login", () {
                  Navigator.pushNamed(context, LoginScreen.id);
                });
              },
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "have an account? ",
                    style: theme().textTheme.bodyMedium!.copyWith(
                          color: const Color(0xFF717784),
                        ),
                  ),
                  TextSpan(
                    text: "Login",
                    style: theme().textTheme.bodyMedium!.copyWith(
                          color: primaryColor,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
