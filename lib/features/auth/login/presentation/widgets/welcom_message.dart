import 'package:caffeine/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    //sizedBox for Page title and welcome massege
    return SizedBox(
      height: screenHeight * 0.20,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Text(
                'LOGIN',
                style: AppTextStyle.bigRed(),
              ),
            ),
            Text(
              'welcome back you have been missed!',
              style: AppTextStyle.getAppBoldTextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
