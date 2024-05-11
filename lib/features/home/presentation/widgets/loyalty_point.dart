import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LoyaltyPoint extends StatelessWidget {
  const LoyaltyPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        width: double.infinity,
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 7, bottom: 10),
                  child: Text(
                    'Loyalty Point :',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Oswald",
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    '600 point',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Oswald"),
                  ),
                ),
              ],
            ),
            LinearPercentIndicator(
              lineHeight: 12,
              percent: 0.6,
              progressColor: AppColors.primaryColor,
              backgroundColor: const Color.fromARGB(87, 15, 34, 45),
              barRadius: const Radius.circular(50),
            ),
          ],
        ),
      ),
    );
  }
}
