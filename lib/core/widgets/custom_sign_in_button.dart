import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomSignInButton extends StatelessWidget {
  final Widget icon;
  final String text;

  const CustomSignInButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: grey),
      ),
      child: ListTile(
        leading: icon,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(text),
        )),
      ),
    );
  }
}
