import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class CustomSearchBar extends StatelessWidget{
  final String hintText;

  const CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: const TextStyle(
          color: Colors.black
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteBackGround,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

}