import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTileDrawer extends StatelessWidget {
  final String icon;
  final String title;

  const CustomListTileDrawer(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon),
      title: Text(title),
    );
  }
}
