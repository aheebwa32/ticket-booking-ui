import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool?isColor;
  const ThickContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(width: 2.0, color:isColor==null? Colors.white:const Color(0xFF8ACCF7)),
      ),
      padding: const EdgeInsets.all(3.0),
    );
  }
}
