import 'package:book_tickets/widgets/app_column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utilities/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 86.0,
                height: 86,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headingStyle3,
                  ),
                  const Text(
                    'Entebbe',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 3.0, vertical: 3.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xFFFEF4F5)),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text('Edit'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Stack(
            children: [
              Container(
                height: 90.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                top: -45,
                left: -40.0,
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 18.0, color: Colors.blue),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25.0,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Colors.indigoAccent,
                        size: 27,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headingStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have 10 flights in a month',
                          style: Styles.headingStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Text('Accumulated Miles', style: Styles.headingStyle2),
          Container(
            child: Column(
              children: [
                Text(
                  '345678',
                  style: TextStyle(
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 45.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'mile covered',
                      style: Styles.headingStyle3.copyWith(fontSize: 20),
                    ),
                    Text(
                      '29th August 2024',
                      style: Styles.headingStyle3.copyWith(fontSize: 20),
                    ),
                  ],
                ),
           const Divider(color: Colors.grey,),
            const SizedBox(
            height: 4.0,
            ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText:'23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(firstText:'Airline CO', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor:false),
                  ],
                ),
            const SizedBox(
            height: 12.0,),
                const LayoutBuilderWidget(sections: 12, isColor: false, width: 12,),const SizedBox(
                  height: 12.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText:'232', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(firstText:'China Town', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor:false),

                  ],
                ),
                const LayoutBuilderWidget(sections: 12, isColor: false, width: 12,),const SizedBox(
                  height: 12.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText:'30 423', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor:false),
                    AppColumnLayout(firstText:'Exuma', secondText: 'Received From', alignment: CrossAxisAlignment.end, isColor:false),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
