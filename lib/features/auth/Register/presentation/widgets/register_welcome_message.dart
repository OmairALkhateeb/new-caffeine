import 'package:caffeine/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class RegisterWelcomMessage extends StatelessWidget {
  const RegisterWelcomMessage({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    //sizedbox for the page title and welcome massege
    return SizedBox(
      height: screenHeight * 0.15,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register',
              style: AppTextStyle.bigRed(),
            ),
            Text(
              'Hope you have a unique experience',
              style: AppTextStyle.getAppBoldTextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
