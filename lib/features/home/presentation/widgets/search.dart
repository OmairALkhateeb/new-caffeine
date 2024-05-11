import 'package:caffeine/common/app_colors.dart';
import 'package:flutter/material.dart';

Padding search(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.only(top: 40, right: 20),
      child: IconButton(
        iconSize: 30,
        color: AppColors.backgroundColor,
        icon: const Icon(
          Icons.search,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  backgroundColor: AppColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  contentPadding: EdgeInsets.only(top: 10.0),
                  content: SizedBox(
                    width: 300.0,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[],
                        ),
                      ],
                    ),
                  ),
                );
              });
          // ...
        },
      ));
}
