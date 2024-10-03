import 'package:book_tickets/Screens/hotel_screens.dart';
import 'package:book_tickets/utilities/ticket_view.dart';
import 'package:book_tickets/widgets/app_double_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utilities/hotel_info.dart';
import '../utilities/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headingStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headingStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/image1.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.indigoAccent,
                      ),
                      Text(
                        'search',
                        style: Styles.headingStyle3,
                      )
                    ],
                  ),
                ),
                const AppDoubleWidget(bigText: 'Hotels', smallText: 'View all')
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((ticketname) {
                return TicketView(tickets: ticketname);
              }).toList(),
            ),
          ),
          Row(
            children: [
              Text(
                'Hotels',
                style: Styles.headingStyle1,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: Styles.headingStyle3,
                  ))
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList.map((hotelname) {
                return HotelScreens(hotel: hotelname);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
