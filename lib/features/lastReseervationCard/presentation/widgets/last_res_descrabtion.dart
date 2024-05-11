


import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/app_text_styles.dart';
import 'package:flutter/material.dart';

class LastResDescrabtion extends StatelessWidget {
  const LastResDescrabtion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Starbox', style: AppTextStyle.cardTitle()),
              Container(
                alignment: Alignment.topLeft,
                child:
                    Text('2/8/2018  5 : 35 PM', style: AppTextStyle.cardText()),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Icon(Icons.people, color: AppColors.primaryColor),
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 0),
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

