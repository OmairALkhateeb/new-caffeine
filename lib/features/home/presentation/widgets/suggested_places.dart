import 'package:caffeine/common/app_text_styles.dart';
import 'package:caffeine/common/image_resources.dart';
import 'package:caffeine/features/reusableWidget/restaurants/data/models/restaurant_model.dart';
import 'package:caffeine/features/reusableWidget/restaurants/presentation/pages/restaurants_page.dart';
import 'package:flutter/material.dart';

class SuggestedPlaces extends StatelessWidget {
  const SuggestedPlaces({super.key});

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
                'Suggest for you :',
                style: AppTextStyle.getAppNormalTextStyle(),
              ),
            ),
          ],
        ),
        SizedBox(
            height: screenWidth * 0.57, child: const SuggestedPlacesGrid()),
      ],
    );
  }
}

class SuggestedPlacesGrid extends StatefulWidget {
  const SuggestedPlacesGrid({super.key});

  @override
  State<SuggestedPlacesGrid> createState() => _SuggestedPlacesGridState();
}

class _SuggestedPlacesGridState extends State<SuggestedPlacesGrid> {
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
    //   double screenHeight = MediaQuery.of(context).size.height;
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
