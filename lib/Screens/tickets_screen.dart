import 'package:book_tickets/Screens/app_ticket_tab.dart';
import 'package:book_tickets/utilities/applayout.dart';
import 'package:book_tickets/utilities/hotel_info.dart';
import 'package:book_tickets/utilities/ticket_view.dart';
import 'package:book_tickets/widgets/app_column_layout.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utilities/styles.dart';
import '../widgets/layout_builder_widget.dart';

class TicketsScreen extends StatelessWidget {
  final bool? isColor;
  const TicketsScreen({super.key, required this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Text(
                'Tickets',
                style: Styles.headingStyle1.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const AppTicketTab(tabOne: 'Upcoming', tabTwo: 'Previous'),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: false,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                            firstText: 'Flutter dB',
                            secondText: 'Passenger',
                            isColor: false,
                            alignment: CrossAxisAlignment.start),
                        AppColumnLayout(
                            firstText: '5667 12345',
                            secondText: 'Passport Number',
                            isColor: false,
                            alignment: CrossAxisAlignment.start)
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    LayoutBuilderWidget(
                      isColor: isColor,
                      sections: 15,
                      width: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        AppColumnLayout(
                            firstText: '1234 59876 456',
                            secondText: 'Number of E-ticket',
                            isColor: false,
                            alignment: CrossAxisAlignment.start),
                        AppColumnLayout(
                            firstText: 'AB456F',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.start,isColor: false,)
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const LayoutBuilderWidget(
                      isColor: false,
                      sections: 15,
                      width: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png',
                                    scale: 11),
                                Text(
                                  '***2456',
                                  style: Styles.headingStyle3.copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Payment method', style: Styles.headingStyle3.copyWith(color: Colors.black))
                          ],
                        ),
                        const AppColumnLayout(
                            firstText: '\$245.95',
                            secondText: 'Price',
                            isColor:false,
                            alignment: CrossAxisAlignment.start),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
             const SizedBox(height: 1,),
              // BARCODE IMAGE
              Container(
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21.0)
                  )
                ),

                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'code 93',
                      drawText: false,
                      width: double.infinity,
                      height: 70,
                      color: isColor == null ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: TicketView(
                  tickets: ticketList[0],
                  // isColor: false,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
