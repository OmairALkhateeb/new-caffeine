// ignore: file_names
import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/Settings/presentation/widgets/settings_desgin.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SettingsBody(),
    );
  }
}
