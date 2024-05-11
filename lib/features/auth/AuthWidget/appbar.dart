import 'package:caffeine/common/image_resources.dart';
import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    //sized box for appbar
    return SizedBox(
      height: screenHeight * 0.30,
      child: Center(
        child: Image.asset(
          ImageResources.logoWithoutBackground,
          width: screenWidth * 0.60,
        ),
      ),
    );
  }
}
