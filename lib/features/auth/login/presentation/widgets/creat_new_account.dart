import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/app_text_styles.dart';
import 'package:caffeine/features/auth/Register/presentation/pages/Register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatNewAccount extends StatelessWidget {
  const CreatNewAccount({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.13,
      child: Column(
        children: [
          const Row(
            children: [
              //  widget for the divider
              Expanded(
                child: Divider(thickness: 0.8, color: AppColors.lightLineColor),
              ),
              Text(
                'You dont have an account?',
                style: TextStyle(
                    color: Color(0xFF686868),
                    fontFamily: "Oswald",
                    fontSize: 14),
              ),
              //  widget for the divider

              Expanded(
                child: Divider(thickness: 0.5, color: AppColors.lightLineColor),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Get.off(() => const RegisterPage());
            },
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text('Register', style: AppTextStyle.smallRed())),
          ),
        ],
      ),
    );
  }
}
