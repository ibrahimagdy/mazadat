import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants.dart';

class CustomSearchBar extends StatelessWidget{
  const CustomSearchBar({super.key});

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
          hintText: 'بحث برقم اللوحة',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

}