import 'package:book_tickets/utilities/applayout.dart';
import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class HotelScreens extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreens({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 20,
              spreadRadius: 1,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180.0,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/${hotel['image']}'),
                ),
                borderRadius: BorderRadius.circular(12.0)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel['place'],
            style: Styles.headingStyle1.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            hotel['destination'],
            style: Styles.headingStyle2.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            '${hotel['price']}',
            style: Styles.headingStyle.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
