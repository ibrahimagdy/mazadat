import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/theme.dart';

class MainButton extends StatelessWidget{
  final Color color;
  final String text;
  final String? icon;
  final Color? textColor;
  final void Function()? onTap;
  const MainButton({super.key, required this.color, required this.text, this.icon, this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: MaterialButton(
        onPressed: (){
          onTap;
        },
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28)
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon?? ""),
            const SizedBox(width: 10),
            Text(
              text,
              style: theme().textTheme.titleMedium!.copyWith(
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );

  }


}