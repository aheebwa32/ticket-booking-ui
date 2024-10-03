import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool?isColor;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
        required this.isColor,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headingStyle2.copyWith(
            color: Colors.black
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          secondText,
          style: Styles.headingStyle3.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
