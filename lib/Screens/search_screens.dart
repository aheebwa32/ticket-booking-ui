import 'package:book_tickets/Screens/app_ticket_tab.dart';
import 'package:book_tickets/utilities/applayout.dart';
import 'package:book_tickets/widgets/app_double_widget.dart';
import 'package:book_tickets/widgets/icon-text_widget.dart';
import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\nyou looking for",
            style: Styles.headingStyle.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(
            tabOne: 'Airline Tickets',
            tabTwo: 'Hotels',
          ),
          const SizedBox(
            height: 25.0,
          ),
          const IconText(
            iconData: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 15,
          ),
          const IconText(
            iconData: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
              decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'find Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 40.0,
          ),
          const AppDoubleWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 400,
                width: size.width * .42,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190.0,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/image1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '20% discount on early booking on this flight',
                      style: Styles.headingStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: 144,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headingStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "take survey for oue services and get a discount",
                              style: Styles.headingStyle2
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xFF189999), width: 18),
                              color: Colors.red),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: size.width * .44,
                    height: 210,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take it ',
                          style: Styles.headingStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
