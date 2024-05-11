import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/image_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantDetailsAppbar extends StatelessWidget {
  const RestaurantDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primaryColor,
      expandedHeight: 200,
      toolbarHeight: 70,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
        ImageResources.logo,
        fit: BoxFit.fitHeight,
      )),

      // icon for go back
      leading: Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: CircleAvatar(
          backgroundColor: AppColors.backgroundColor,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 25,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),

      // icon for add to favorites

      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16, top: 8),
          child: CircleAvatar(
            backgroundColor: AppColors.backgroundColor,
            child: Icon(
              Icons.favorite_border_rounded,
              size: 25,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
