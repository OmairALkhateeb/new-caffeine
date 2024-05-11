import 'package:caffeine/common/app_text_styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ShowAds extends StatefulWidget {
  const ShowAds({super.key});

  @override
  State<ShowAds> createState() => _ShowAdsState();
}

class _ShowAdsState extends State<ShowAds> {
  @override
  Widget build(BuildContext context) {
    // List of images to be displayed in the carousel slider.
    final myImage = [
      Image.asset("assets/ads1.png"),
      Image.asset("assets/ads2.png"),
      Image.asset("assets/ads3.png"),
      Image.asset("assets/ads4.png"),
      Image.asset("assets/ads5.png"),
    ];
    //int myCurrentIndex = 0;
    return Column(
      children: [
        // Text widget displaying "Special offers :"
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 0, top: 10),
              child: Text(
                'Special offers :',
                style: AppTextStyle.getAppNormalTextStyle(),
              ),
            ),
          ],
        ),
        // Carousel slider widget displaying the images.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 200,
              viewportFraction: 1,
              autoPlayAnimationDuration: const Duration(microseconds: 500),
              autoPlayInterval: const Duration(seconds: 1),
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              // onPageChanged: (index, reason) {
              //   setState(() {
              //     myCurrentIndex = index;
              //   });
              // },
            ),
            items: myImage,
          ),
        ),

        ///
        ///
        ///
        ///
      ],
    );
  }
}

//this widget needs some fix
        // here we have the point in the buttom

        // Center(
        //   child: AnimatedSmoothIndicator(
        //     // curve: Curves.bounceInOut,
        //     activeIndex: myCurrentIndex,
        //     count: myImage.length,
        //     effect: const WormEffect(
        //         dotHeight: 3,
        //         dotWidth: 10,
        //         spacing: 10,
        //         activeDotColor: AppColors.primaryColor,
        //         dotColor: Colors.white,
        //         paintStyle: PaintingStyle.fill),
        //   ),
        // ),