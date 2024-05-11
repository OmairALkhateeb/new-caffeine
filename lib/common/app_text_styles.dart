import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle settingsTitle() {
    return const TextStyle(
      color: AppColors.primaryColor,
      fontSize: 22,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      fontFamily: "Oswald",
    );
  }

  static TextStyle cardTitle() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor,
      fontFamily: "Oswald",
    );
  }

  static TextStyle cardText() {
    return const TextStyle(
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: "Oswald",
    );
  }

  static TextStyle settingsText() {
    return TextStyle(
        color: Colors.grey[700], fontSize: 20, fontFamily: "Oswald");
  }

  static TextStyle buttonTextStyle() {
    return const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "Oswald",
        color: Colors.white,
        fontSize: 20);
  }

  static TextStyle smallRed() {
    return const TextStyle(
      color: Color(0xffba3521),
      fontSize: 14,
      fontFamily: "Oswald",
    );
  }

  static TextStyle bigRed() {
    return const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w800,
        letterSpacing: 2,
        fontFamily: "Oswald",
        color: AppColors.secondaryColor);
  }

  static TextStyle getAppBoldTextStyle() {
    return const TextStyle(
        color: AppColors.primaryColor, fontSize: 22, fontFamily: "Oswald");
  }

  static TextStyle getAppNormalTextStyle() {
    return const TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: "Oswald",
        color: AppColors.primaryColor,
        fontSize: 20);
  }
}
