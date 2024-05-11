import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Row(
        children: [
          Column(
            //  place title
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Gastronome Haven',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                  fontFamily: "Oswald",
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  '2/8/2018  5 : 35 PM',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primaryColor,
                    fontFamily: "Oswald",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Icon(Icons.people, color: AppColors.primaryColor),
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 2),
                      child: Text(
                        '8',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F222D),
                          fontFamily: "Oswald",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
