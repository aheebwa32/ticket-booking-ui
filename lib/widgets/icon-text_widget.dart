import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class IconText extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconText({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: const Color(0xFFBFC2DF),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
