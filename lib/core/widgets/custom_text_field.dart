import 'package:flutter/material.dart';

import '../../constants.dart';

class TextFormFieldCustom extends StatelessWidget {
  final BuildContext context;
  final String? labelText;
  final TextEditingController controller;
  bool? border = true;
  bool? number = false;
  bool? password = false;
  String? value;
  double length;
  String? hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;

  TextFormFieldCustom({
    super.key,
    required this.context,
    this.labelText,
    required this.controller,
    this.border,
    this.value,
    this.number,
    this.password,
    this.length = 0,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: value == null ? controller : null,
        style: const TextStyle(color: Colors.black),
        initialValue: value,
        obscureText: password ?? false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This Field Is Required";
          }
          return null;
        },
        keyboardType:
            number == true ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          contentPadding: length == 0 ? null : EdgeInsets.only(bottom: length),
          labelText: labelText,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          fillColor: const Color(0XFFF9FAFB),
          filled: true,
          labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: darkGrey,
                overflow: TextOverflow.clip,
              ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: const BorderSide(color: Color(0XFFA1A8B0), width: 0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: const BorderSide(color: Color(0XFFA1A8B0), width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: const BorderSide(color: Color(0XFFA1A8B0), width: 0),
          ),
        ));
  }
}
