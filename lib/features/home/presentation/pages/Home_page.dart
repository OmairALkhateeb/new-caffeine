// ignore: file_names
import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/home/presentation/widgets/show_ads.dart';
import 'package:caffeine/features/home/presentation/widgets/home_appbar.dart';
import 'package:caffeine/features/home/presentation/widgets/categories.dart';
import 'package:caffeine/features/home/presentation/widgets/suggested_places.dart';
import 'package:caffeine/features/home/presentation/widgets/trendy_places.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // widhet for the home page appbar
              Appbar(),
              // widget for the carousel_slider
              ShowAds(),
              // widget for the categories
              Categories(),
              // widget for the trendy places
              FinalTrendyPlaces(),
              // widget for suggester places from app
              SuggestedPlaces(),
            ],
          ),
        ),
      ),
    );
  }
}
