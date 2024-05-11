import 'package:caffeine/features/auth/login/presentation/widgets/login_button.dart';
import 'package:caffeine/features/auth/AuthWidget/textfaild.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    super.key,
    required this.screenHeight,
    required this.numberController,
    required this.passwordController,
  });

  final double screenHeight;
  final TextEditingController numberController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.35,
      child: Column(
        children: [
          TextFeild(
            title: ' Number     ',
            controller: numberController,
          ),
          const SizedBox(
            height: 0,
          ),
          TextFeild(
            title: ' Password     ',
            controller: passwordController,
          ),
          const SizedBox(
            height: 20,
          ),
          LoginButton(screenHeight: screenHeight),
        ],
      ),
    );
  }
}
