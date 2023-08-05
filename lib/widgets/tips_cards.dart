// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:cozy/model/model_tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCards extends StatelessWidget {
  final Tips tips;
  TipsCards(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          child: Image.asset(tips.imageUrl),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextMedium.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              tips.updatedAt,
              style: greyTextLight.copyWith(fontSize: 14),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: grey,
          ),
        ),
      ],
    );
  }
}
