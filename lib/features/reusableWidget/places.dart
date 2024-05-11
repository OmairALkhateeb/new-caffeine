import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/image_resources.dart';
import 'package:caffeine/features/reusableWidget/restaurants/data/models/restaurant_model.dart';
import 'package:caffeine/features/reusableWidget/restaurants/presentation/pages/restaurants_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRestaurants extends StatefulWidget {
  const AllRestaurants({super.key});

  @override
  State<AllRestaurants> createState() => _AllRestaurantsState();
}

class _AllRestaurantsState extends State<AllRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primaryColor,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  size: 20,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.backgroundColor,
        body: const BuiltAllrestaurantsBody());
  }
}

// Method to build place body

class BuiltAllrestaurantsBody extends StatefulWidget {
  const BuiltAllrestaurantsBody({super.key});

  @override
  State<BuiltAllrestaurantsBody> createState() =>
      _BuiltAllrestaurantsBodyState();
}

class _BuiltAllrestaurantsBodyState extends State<BuiltAllrestaurantsBody> {
  List<Restaurant> restaurants = [
    Restaurant(
        name: 'Gastronome Haven',
        description: 'Savor. Indulge. Delight.',
        image: ImageResources.logo,
        isFavorite: true),
    Restaurant(
        name: 'Gastronome Haven',
        description: 'Savor. Indulge. Delight.',
        image: ImageResources.logo,
        isFavorite: true),
    Restaurant(
        name: 'Gastronome Haven',
        description: 'Savor. Indulge. Delight.',
        image: ImageResources.logo,
        isFavorite: true),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),

          //widget for chossen category name
          child: Row(
            children: [
              Icon(
                Icons.location_pin,
                color: AppColors.primaryColor,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Miami',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F222D),
                    fontFamily: "Oswald",
                  ),
                ),
              ),
            ],
          ),
        ),

        // widget for all restaurant in  Specific area

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: screenWidth * 0.5,
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 15),
                itemCount: restaurants.length,
                itemBuilder: ((context, index) {
                  final restaurant = restaurants[index];
                  return RestaurantCard(
                    restaurant: restaurant,
                  );
                })),
          ),
        ),
      ],
    );
  }
}
