import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class DropDownBar extends StatefulWidget {
  const DropDownBar({Key? key}) : super(key: key);

  @override
  State<DropDownBar> createState() => _DropDownBarState();
}

class _DropDownBarState extends State<DropDownBar> {
  final List<Map<String, List<String>>> _dropdownItems = [
    {'Item 5': []},
    {'مزايدات': ['1', '2', '3']},
    {'ينتهي في': ['1', '2', '3']},
    {'رقم اللوحة': ['1', '2', '3']},
    {'السعر': ['1', '2', '3']},
  ];

  final List<String?> _selectedItems = List<String?>.filled(5, null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0XFFECDDDD),
            Color(0XFFECDDDD),
            Color(0XFFECDDDD),
            Color(0XFFECDDDD),
            Color(0XFFECDDDD),
            Color(0XFFD2C8C8),
            Color(0XFFB8B2B2),
            Color(0XFF867E7E),
          ],
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          textDirection: TextDirection.rtl, // Add this line to make the items appear from right to left
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(5, (index) {
            String dropdownKey = _dropdownItems[index].keys.first;
            List<String> dropdownOptions = _dropdownItems[index][dropdownKey] ?? [];

            if (index == 0) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SvgPicture.asset(
                      'assets/icons/details_icon.svg',
                    ),
                  ),
                  const VerticalDivider(
                    color: Color(0XFFBEBEBE),
                    thickness: 2,
                  ),
                ],
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: primaryColor,
                          ),
                          hint: Text(
                            dropdownKey,
                            style: TextStyle(fontSize: 15, color: primaryColor),
                          ),
                          value: _selectedItems[index],
                          items: dropdownOptions.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 14, color: primaryColor),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedItems[index] = newValue;
                            });
                          },
                          iconSize: 16,
                        ),
                      ),
                      if (index != 4)
                        const VerticalDivider(
                          color: Color(0XFFBEBEBE),
                          thickness: 2,
                        ),
                    ],
                  ),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}