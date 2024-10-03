import 'package:book_tickets/utilities/applayout.dart';
import 'package:book_tickets/utilities/styles.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  final bool? isColor;
  const TicketView({super.key, required this.tickets, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          children: [
            Container(
              decoration:const BoxDecoration(
                color:  Color(0XFF526799),
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(21.0),
                  topRight: Radius.circular(21.0),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Entebbe',
                        style: isColor == null
                            ? Styles.headingStyle2.copyWith(color: Colors.white)
                            : Styles.headingStyle2
                            // .copyWith(color: const Color()),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(children: [
                          const SizedBox(
                            height: 24,
                            child: LayoutBuilderWidget(isColor: null, sections: 6,width: 3.0,),
                          ),
                           Center(
                            child:Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xFF8ACCF7),
                              ),
                            ),
                          ),

                        ]),

                      ),

                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        tickets['from']['code'],
                        style: isColor == null
                            ? Styles.headingStyle2.copyWith(color: Colors.white)
                            : Styles.headingStyle2
                            // .copyWith(color: const Color(0xFF8ACCF7)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(tickets['to']['code'],
                            style: isColor == null
                                ? Styles.headingStyle3
                                .copyWith(color: Colors.white)
                                : Styles.headingStyle2),
                      ),
                      Text(tickets['flying_time'],
                          style: isColor == null
                              ? Styles.headingStyle3
                              .copyWith(color: Colors.white)
                              : Styles.headingStyle2),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'NAR',
                          style: Styles.headingStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // ORANGE SECTION

            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 1,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          ('${constraints.constrainWidth()}');
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 20).floor(),
                                  (index) => SizedBox(
                                height: 1,
                                width: 5,
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
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21.0),
                  bottomRight: Radius.circular(21.0),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20 july',
                            style: isColor == null
                                ? Styles.headingStyle3
                                .copyWith(color: Colors.white)
                                : Styles.headingStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'DATE',
                            style:isColor==null? Styles.headingStyle3
                                .copyWith(color: Colors.white):Styles.headingStyle3.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '10:00pm',
                            style: Styles.headingStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Departure Time',
                            style: Styles.headingStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '500',
                            style: Styles.headingStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Number',
                            style: Styles.headingStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}