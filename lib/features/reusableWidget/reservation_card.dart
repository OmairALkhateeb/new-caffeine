import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/reservationCard/presentation/widgets/remove_this_reservation.dart';
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
          // widget for place image
          Row(
            children: [
              Container(
                  decoration: const BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      "assets/minlogo.jpg",
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Column(
                      //  widget for place title
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

                        //  widget for reservation date

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
                        // widget for Number of chairs

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
              )
            ],
          ),

          // icon for remove the reservation from history
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                removeThisReservation(context);
                // ...
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
