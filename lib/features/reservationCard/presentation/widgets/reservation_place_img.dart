import 'package:flutter/material.dart';

class PlaceImage extends StatelessWidget {
  const PlaceImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            "assets/minlogo.jpg",
          ),
        ));
  }
}