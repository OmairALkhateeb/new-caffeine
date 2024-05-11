import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';

class RestaurantDescription extends StatelessWidget {
  const RestaurantDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // widget for restaurant name
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Starbox & Miami',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
                fontFamily: "Oswald",
                color: AppColors.primaryColor,
              ),
            ),
          ),
          // widget for restaurant food

          Padding(
            padding: const EdgeInsets.only(left: 15, top: 4),
            child: Text(
              'Chinese, American, Deshi food',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
                fontFamily: "Oswald",
                color: Colors.grey[600],
              ),
            ),
          ),
          // widget for restaurant rating

          Padding(
            padding: const EdgeInsets.only(left: 15, top: 6),
            child: Row(
              children: [
                Text(
                  '4.9',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    fontFamily: "Oswald",
                    color: Colors.grey[600],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.star_rate_rounded,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
                Text(
                  '350+ Ratings',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    fontFamily: "Oswald",
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 5),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.timer,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
                Text(
                  '24/24',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    fontFamily: "Oswald",
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
