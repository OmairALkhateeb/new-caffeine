import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/auth/AuthWidget/appbar.dart';
import 'package:caffeine/features/auth/login/presentation/widgets/creat_new_account.dart';
import 'package:caffeine/features/auth/login/presentation/widgets/sign_in.dart';
import 'package:caffeine/features/auth/login/presentation/widgets/welcom_message.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Controllers for phone number & password input fields.
  final numberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildLoginPageBodyContent());
  }

  // Method to build the login page body.

  Widget _buildLoginPageBodyContent() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        AppColors.extraBlueColor,
        AppColors.primaryColor,
      ])),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Widget for the login appbar.
            AuthAppBar(screenHeight: screenHeight, screenWidth: screenWidth),

            // Container for the rest of the content.

            Container(
              width: double.infinity,
              height: screenHeight * 0.70,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                  color: AppColors.backgroundColor),
              child: Center(
                child: SizedBox(
                  width: screenWidth * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Widget for  welcome message.
                      WelcomeMessage(screenHeight: screenHeight),

                      // user have sign-in here.
                      SignIn(
                          screenHeight: screenHeight,
                          numberController: numberController,
                          passwordController: passwordController),

                      // creat new account if the user does not have one.
                      CreatNewAccount(screenHeight: screenHeight)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
