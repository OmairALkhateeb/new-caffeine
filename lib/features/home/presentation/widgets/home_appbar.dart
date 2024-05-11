import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/home/presentation/widgets/loyalty_point.dart';
import 'package:caffeine/features/home/presentation/widgets/search.dart';
import 'package:caffeine/features/home/presentation/widgets/show_last_res.dart';
import 'package:flutter/material.dart';
import '../../../../common/image_resources.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          gradient: LinearGradient(colors: [
            AppColors.extraBlueColor,
            AppColors.primaryColor,
          ])),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // widget for the appbar image
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0, left: 20),
                  child: Image.asset(
                    ImageResources.logoWithoutBackground,
                    height: 100,
                  ),
                ),
              ),

              Row(
                children: [
                  // show last reservation method
                  showLastReservation(context),
                  // here we have search
                  search(context),
                ],
              ),
            ],
          ),

          // widget for the loyalty point concept
          const LoyaltyPoint(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
