import 'package:caffeine/features/auth/Register/presentation/widgets/register_welcome_message.dart';
import 'package:caffeine/features/auth/Register/presentation/widgets/sign_up_button.dart';
import 'package:caffeine/features/auth/AuthWidget/textfaild.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.nameController,
    required this.numberController,
    required this.passwordController,
    required this.conPasswordController,
    required this.context,
  });

  final double screenHeight;
  final double screenWidth;
  final TextEditingController nameController;
  final TextEditingController numberController;
  final TextEditingController passwordController;
  final TextEditingController conPasswordController;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.70,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60)),
          color: Color(0xffebe7d9)),
      child: Center(
        child: SizedBox(
          width: screenWidth * 0.75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // widget for welcome message
              RegisterWelcomMessage(screenHeight: screenHeight),

              // information user should put here
              SizedBox(
                height: screenHeight * 0.5,
                child: Column(
                  children: [
                    TextFeild(
                      title: 'Name',
                      controller: nameController,
                    ),
                    TextFeild(
                      title: 'Number',
                      controller: numberController,
                    ),
                    TextFeild(
                      title: 'Password',
                      controller: passwordController,
                    ),
                    TextFeild(
                      title: 'Confirm password',
                      controller: conPasswordController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // widget for Sign up button
                    SignUpButton(screenHeight: screenHeight),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
