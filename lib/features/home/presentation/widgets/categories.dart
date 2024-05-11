import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/app_text_styles.dart';
import 'package:caffeine/features/Home/data/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5, top: 0),
              child: Text(
                'Select a region please',
                style: AppTextStyle.getAppNormalTextStyle(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 80, child: CategoriesDesgin()),
      ],
    );
  }
}

//her we have categories desgin

class CategoriesDesgin extends StatefulWidget {
  const CategoriesDesgin({super.key});

  @override
  State<CategoriesDesgin> createState() => _CategoriesDesginState();
}

class _CategoriesDesginState extends State<CategoriesDesgin> {
  // list of states of America for categories
  List<Category> categories = [
    Category(name: 'Alabama'),
    Category(name: 'Alaska'),
    Category(name: 'Connecticut'),
    Category(name: 'Florida'),
    Category(name: 'Hawaii'),
    Category(name: 'Maryland'),
    Category(name: 'New Jersey'),
    Category(name: 'North Carolina'),
    Category(name: 'Pennsylvania'),
    Category(name: 'Wyoming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed("/ShowRestaurantsAccordingToCategory");
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xFF1A3748),
                            AppColors.primaryColor,
                          ]),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            categories[index].name,
                            style: const TextStyle(
                                color: AppColors.backgroundColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Oswald"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
