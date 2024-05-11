import 'package:caffeine/features/auth/login/presentation/pages/login_page.dart';
import 'package:caffeine/features/dashBoard/presentation/pages/dashBoard_page.dart';
import 'package:caffeine/features/restaurantDetails/presentation/pages/restaurant_details_page.dart';
import 'package:caffeine/features/reusableWidget/places.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Caffeine extends StatelessWidget {
  const Caffeine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      getPages: [
        GetPage(name: "/DashBoardPage", page: () => const DashBoard()),
        GetPage(
            name: "/ShowRestaurantsAccordingToCategory",
            page: () => const AllRestaurants()),
        GetPage(
            name: "/ShowRestaurantDetails",
            page: () => const RestaurantDetailsPage()),
        //GetPage(name: "name", page:()=> page),
      ],
    );
  }
}
