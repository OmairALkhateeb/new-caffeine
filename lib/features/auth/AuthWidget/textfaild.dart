import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';

class TextFeild extends StatelessWidget {
  const TextFeild({super.key, required this.controller, required this.title});

  // ignore: prefer_typing_uninitialized_variables
  final controller;
  // ignore: prefer_typing_uninitialized_variables
  final title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        cursorColor: AppColors.primaryColor,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 3)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.red)),
            label: Text(
              title,
              style: const TextStyle(
                  fontFamily: "Oswald",
                  fontSize: 20,
                  color: AppColors.primaryColor),
            )),
      ),
    );
  }
}
