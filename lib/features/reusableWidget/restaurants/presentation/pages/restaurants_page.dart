import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/reusableWidget/restaurants/data/models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RestaurantCard extends StatefulWidget {
  const RestaurantCard({
    Key? key,
    required this.restaurant, // Required parameter of type Restaurant
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
   // Toggling the favorite status
  void toggleFavorite(Restaurant restaurant) {
    setState(() {
      restaurant.isFavorite = !restaurant.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF414040).withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          )
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed("/ShowRestaurantDetails");
            },
            child: Container(
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(widget.restaurant.image, fit: BoxFit.cover),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Column(
                  children: [
                    Text(
                      widget.restaurant.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                        fontFamily: "Oswald",
                      ),
                    ),
                    Text(
                      widget.restaurant.description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFFB6B4AD),
                        fontFamily: "Oswald",
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: widget.restaurant.isFavorite
                    ? const Icon(
                        Icons.favorite,
                        color: AppColors.primaryColor,
                        size: 22,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: AppColors.primaryColor,
                        size: 22,
                      ),
                onPressed: () {
                  toggleFavorite(widget.restaurant);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
