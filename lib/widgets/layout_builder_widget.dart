import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool?isColor;
  final int sections;
  final double width;
  const LayoutBuilderWidget({super.key,required this.isColor,required this.sections, required this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        ('${constraints.constrainWidth()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
                (index) => SizedBox(
              height: 1,
              width: width,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? Colors.white
                        : const Color(0xFF8ACCF7)),
              ),
            ),
          ),
        );
      },
    );
  }
}
