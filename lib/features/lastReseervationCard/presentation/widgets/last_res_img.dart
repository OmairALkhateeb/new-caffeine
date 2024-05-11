import 'package:flutter/material.dart';

class LastResImg extends StatelessWidget {
  const LastResImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(0)),
          child: Image.asset(
            "assets/minlogo.jpg",
          ),
        ));
  }
}
