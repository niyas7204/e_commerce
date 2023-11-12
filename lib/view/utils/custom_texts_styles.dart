import 'package:e_commerce/view/utils/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class CustomTextSyles {
  static labelText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: PreferedColors.baseColor),
      );
  static header1(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: PreferedColors.baseColor),
      );
  static header25(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: PreferedColors.baseColor),
      );
  static nameText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: PreferedColors.baseColor),
      );
  static text15(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: PreferedColors.baseColor),
      );
}
