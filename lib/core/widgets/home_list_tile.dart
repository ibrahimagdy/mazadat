import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../utils/theme.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        CupertinoIcons.back,
        size: 30,
      ),
      title: Text(
        "المبلغ الذي تستطيع المزايده به 0 درهم",
        style: theme().textTheme.titleSmall,
        textAlign: TextAlign.end,
      ),
      subtitle: Text(
        "زياده حد المزايدة / التأمين",
        style: theme().textTheme.titleSmall!.copyWith(
              color: primaryColor,
            ),
        textAlign: TextAlign.end,
      ),
      trailing: Image.asset(
        "assets/images/money.png",
      ),
    );
  }
}
