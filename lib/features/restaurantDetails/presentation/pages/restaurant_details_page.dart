import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/RestaurantDetails/presentation/widgets/restaurant_description.dart';
import 'package:caffeine/features/RestaurantDetails/presentation/widgets/restaurant_details_appbar.dart';
import 'package:flutter/material.dart';

class RestaurantDetailsPage extends StatefulWidget {
  const RestaurantDetailsPage({Key? key}) : super(key: key);

  @override
  State<RestaurantDetailsPage> createState() => _RestaurantDetailsPageState();
}

class _RestaurantDetailsPageState extends State<RestaurantDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        height: double.infinity,
        child: CustomScrollView(
          slivers: [
            //widget for restaurant logo and some icon
            RestaurantDetailsAppbar(),
            //widget for restaurant description
            SliverToBoxAdapter(child: RestaurantDescription()),
            //Temporary widget in order to apply the concept of scrolling
            SliverToBoxAdapter(
              child: SizedBox(
                height: 1200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
