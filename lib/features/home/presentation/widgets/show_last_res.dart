import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/lastReseervationCard/presentation/pages/last_reseervationcard_page.dart';
import 'package:flutter/material.dart';

Padding showLastReservation(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 8),
          child: IconButton(
            iconSize: 30,
            color: AppColors.backgroundColor,
            icon: const Icon(
              Icons.shopping_cart_checkout_sharp,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AlertDialog(
                      backgroundColor: AppColors.backgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0))),
                      contentPadding: EdgeInsets.only(top: 0),
                      content: SizedBox(
                        height: 100,
                        child: LastReseervationCardPage(),
                      ),
                    );
                  });
              // ...
            },
          ),
        ),
      ],
    ),
  );
}
