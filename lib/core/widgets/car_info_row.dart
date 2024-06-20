import 'package:flutter/material.dart';
import 'package:mazadat/core/utils/theme.dart';

class CarInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const CarInfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme().textTheme.labelSmall!.copyWith(
                color: Colors.black,
                fontSize: 15,
              ),
        ),
        Text(
          value,
          style: theme().textTheme.labelSmall!.copyWith(
                color: Colors.black,
                fontSize: 15,
              ),
        ),
      ],
    );
  }
}
