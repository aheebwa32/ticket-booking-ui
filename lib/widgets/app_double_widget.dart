import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class AppDoubleWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleWidget({super.key, required this.bigText,required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          bigText,
          style: Styles.headingStyle1,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Styles.headingStyle3,
          ),
        )
      ],
    );
  }
}
