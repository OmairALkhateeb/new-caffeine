import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/lastReseervationCard/presentation/widgets/last_res_descrabtion.dart';
import 'package:caffeine/features/lastReseervationCard/presentation/widgets/last_res_img.dart';
import 'package:flutter/material.dart';

class LastReservationDesign extends StatelessWidget {
  const LastReservationDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.backgroundColor,
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF414040).withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8)
          ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [LastResImg(), LastResDescrabtion()],
          ),
        ],
      ),
    );
  }
}
