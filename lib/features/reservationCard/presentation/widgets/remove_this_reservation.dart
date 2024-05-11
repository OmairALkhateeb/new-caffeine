

  import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';

Future<dynamic> removeThisReservation(BuildContext context) {
    return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: AppColors.backgroundColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      contentPadding: const EdgeInsets.only(top: 10.0),
                      content: SizedBox(
                        width: 300.0,
                        height: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 5),
                                      child: Text(
                                        'Remove this reservation \nfrom the archive?',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0F222D),
                                          // color: Color(0xff0F222D),
                                          fontFamily: "Oswald",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Yes',
                                                style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 20,
                                                  fontFamily: "Oswald",
                                                ),
                                              )),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 20,
                                                  fontFamily: "Oswald",
                                                ),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  });
  }
