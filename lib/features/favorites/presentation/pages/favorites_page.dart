import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/favorites/presentation/widgets/favorites_desgin.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  createState() => _FavoritesPage();
}

class _FavoritesPage extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: FavoritesDesign(),
    );
  }
}
