// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class Facility extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int numberItem;

  Facility(
      {this.imageUrl = 'assets/kitchen.png',
      this.name = 'Kitchen',
      this.numberItem = 2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(text: '$numberItem', style: purpleTextMedium, children: [
            TextSpan(
              text: name,
              style: greyTextLight,
            ),
          ]),
        )
      ],
    );
  }
}
