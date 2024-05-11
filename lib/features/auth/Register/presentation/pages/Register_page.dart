import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/auth/AuthWidget/appbar.dart';
import 'package:caffeine/features/auth/Register/presentation/widgets/sign_up.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

// ignore: camel_case_types
class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final numberController = TextEditingController();
  final conPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return _buildRegisterPageBodyContent();
  }

  // Method to build the Register page body.
  Widget _buildRegisterPageBodyContent() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            AppColors.extraBlueColor,
            AppColors.primaryColor,
          ])),
          child: Column(
            children: [
              //widget for register appbar
              AuthAppBar(screenHeight: screenHeight, screenWidth: screenWidth),

              //  rest of the content.
              SignUp(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  nameController: nameController,
                  numberController: numberController,
                  passwordController: passwordController,
                  conPasswordController: conPasswordController,
                  context: context)
            ],
          ),
        ),
      ),
    );
  }
}

//
