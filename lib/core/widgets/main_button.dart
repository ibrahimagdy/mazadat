import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainButton extends StatelessWidget {
  final Color color;
  final String text;
  final String? icon;
  final Color? textColor;
  final void Function()? onTap;
  final TextStyle? textStyle;

  const MainButton({
    super.key,
    required this.color,
    required this.text,
    this.icon,
    this.textColor = Colors.white,
    this.onTap,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: MaterialButton(
        onPressed: onTap,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) SvgPicture.asset(icon!),
            if (icon != null) const SizedBox(width: 10),
            Text(
              text,
              style: textStyle ?? TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
