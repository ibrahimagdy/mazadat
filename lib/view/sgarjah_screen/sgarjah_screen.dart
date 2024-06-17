import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazadat/constants.dart';
import 'package:mazadat/core/utils/theme.dart';
import '../../core/widgets/drop_down_bar.dart';
import '../../models/home_model.dart';

class SgarjahScreen extends StatelessWidget {
  static String id = "SgarjahScreen";
  const SgarjahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HomeModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        actions: [
          SvgPicture.asset(
            "assets/icons/filter_icon.svg",
          ),
          const SizedBox(width: 12),
          const Icon(Icons.search, size: 24),
          const SizedBox(width: 12),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const DropDownBar(),
            ListTile(
              title: const Text(
                "لم تتمكن من العثور على لوحتك المفضلة؟",
              ),
              subtitle: Text(
                "اطلبها الآن",
                style: TextStyle(color: primaryColor),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            Expanded(
              child: Container(
                color: const Color(0XFFD9D9D9),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        const SizedBox(height: 2),
                        Container(
                          color: whiteBackGround,
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 3),
                            title: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/images/shargah_tile.svg"),
                                const SizedBox(width: 8),
                                Text(
                                  "68,000 درهم",
                                  style:
                                      theme().textTheme.titleMedium!.copyWith(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                ),
                              ],
                            ),
                            trailing: const Icon(Icons.more_vert),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFF616161)),
                borderRadius: BorderRadius.circular(25),
                color: const Color(0XFFF3F1F1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
