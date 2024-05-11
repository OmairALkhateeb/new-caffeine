import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: screenHeight * 0.05,
        width: 350,

        //widget for the sign in button
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed("/DashBoardPage");
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              'SIGN IN',
              style: AppTextStyle.buttonTextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
