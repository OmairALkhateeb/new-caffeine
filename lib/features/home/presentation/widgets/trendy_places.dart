import 'package:caffeine/common/app_text_styles.dart';
import 'package:caffeine/common/image_resources.dart';
import 'package:caffeine/features/reusableWidget/restaurants/data/models/restaurant_model.dart';
import 'package:caffeine/features/reusableWidget/restaurants/presentation/pages/restaurants_page.dart';
import 'package:flutter/material.dart';

class FinalTrendyPlaces extends StatefulWidget {
  const FinalTrendyPlaces({super.key});

  @override
  State<FinalTrendyPlaces> createState() => _FinalTrendyPlacesState();
}

class _FinalTrendyPlacesState extends State<FinalTrendyPlaces> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 5,
              ),
              child: Text(
                'Trendy places :',
                style: AppTextStyle.getAppNormalTextStyle(),
              ),
            ),
          ],
        ),
        SizedBox(height: screenWidth * 0.58, child: const TrendyPlaces()),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

//widget for trendy places design

class TrendyPlaces extends StatefulWidget {
  const TrendyPlaces({super.key});

  @override
  State<TrendyPlaces> createState() => _TrendyPlacesState();
}

class _TrendyPlacesState extends State<TrendyPlaces> {
  // list of Restaurants

  List<Restaurant> restaurants = [
    Restaurant(
        name: 'Gastronome Haven',
        description: 'Savor. Indulge. Delight.',
        image: ImageResources.logo,
        isFavorite: false),
    Restaurant(
        name: 'Gastronome Haven',
        description: 'Savor. Indulge. Delight.',
        image: ImageResources.logo,
        isFavorite: false),
    Restaurant(
        name: 'Gastronome Haven',
        description: 'Savor. Indulge. Delight.',
        image: ImageResources.logo,
        isFavorite: false),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: screenWidth * 0.5,
                crossAxisCount: 1,
                childAspectRatio: 1.3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            itemCount: restaurants.length,
            itemBuilder: ((context, index) {
              final restaurant = restaurants[index];
              return RestaurantCard(
                restaurant: restaurant,
              );
            })),
      ),
    );
  }
}
