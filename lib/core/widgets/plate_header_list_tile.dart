import 'package:flutter/material.dart';
import '../../constants.dart';

class PlateHeaderListTile extends StatelessWidget{
  const PlateHeaderListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "لم تتمكن من العثور على لوحتك المفضلة؟",
      ),
      subtitle: Text(
        "اطلبها الآن",
        style: TextStyle(color: primaryColor),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );

  }

}