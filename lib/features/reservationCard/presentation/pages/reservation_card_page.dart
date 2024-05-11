import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/reservationCard/presentation/widgets/recervation_place_details.dart';
import 'package:caffeine/features/reservationCard/presentation/widgets/remove_this_reservation.dart';
import 'package:caffeine/features/reservationCard/presentation/widgets/reservation_place_img.dart';
import 'package:flutter/material.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF414040).withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              // widget for place image
              PlaceImage(),
              // widget for place details
              PlaceDetails()
            ],
          ),

          // icon for remove the reseravation from history
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                removeThisReservation(context);
              },
              icon: const Icon(
                Icons.delete,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
