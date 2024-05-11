import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/reservationCard/presentation/pages/reservation_card_page.dart';
import 'package:flutter/material.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _buildArchiveBody(),
    );
  }
}

Widget _buildArchiveBody() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
    child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 120,
            crossAxisCount: 1,
            childAspectRatio: 1.3,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10),
        itemBuilder: ((context, index) {
          return const ReservationCard();
        })),
  );
}
