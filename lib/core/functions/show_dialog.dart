import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/utils/theme.dart';
import 'package:mazadat/core/widgets/main_button.dart';

void showConfirmationDialog(BuildContext context, String title, String subTitle,
    String textButton, void Function()? onTap) {
  showDialog(
    context: context,
    builder: (dialogContext) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                backgroundColor: grey,
                radius: 50,
                child: SvgPicture.asset("assets/icons/success.svg"),
              ),
              const SizedBox(height: 40),
              Text(title,
                  textAlign: TextAlign.center,
                  style: theme().textTheme.headlineSmall),
              const SizedBox(height: 10),
              Text(subTitle,
                  textAlign: TextAlign.center,
                  style: theme()
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0XFFA1A8B0))),
              const SizedBox(height: 25),
              MainButton(
                  onTap: onTap,
                  text: textButton,
                  color: primaryColor,
                  textStyle: theme().textTheme.bodyLarge),
              const SizedBox(height: 25),
            ],
          ),
        ),
      );
    },
  );
}
