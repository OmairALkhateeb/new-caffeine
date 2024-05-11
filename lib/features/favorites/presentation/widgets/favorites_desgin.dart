import 'package:caffeine/common/image_resources.dart';
import 'package:caffeine/features/reusableWidget/restaurants/data/models/restaurant_model.dart';
import 'package:caffeine/features/reusableWidget/restaurants/presentation/pages/restaurants_page.dart';
import 'package:flutter/material.dart';

class FavoritesDesign extends StatefulWidget {
  const FavoritesDesign({super.key});

  @override
  State<FavoritesDesign> createState() => _FavoritesDesignState();
}

class _FavoritesDesignState extends State<FavoritesDesign> {
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
    //double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: screenWidth * 0.5,
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 20),
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
