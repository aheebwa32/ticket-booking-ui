import 'package:book_tickets/utilities/applayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  final String tabOne;
  final String tabTwo;
  const AppTicketTab({super.key, required this.tabOne, required this.tabTwo});

  @override
  Widget build(BuildContext context) {
    final size = appLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: const Color(0xFFF456FD),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(50),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(tabOne),
              ),
            ),
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                    right: Radius.circular(50),
                  ),
                  color: Colors.grey.shade200),
              child: Center(
                child: Text(tabTwo),
              ),
            )
          ],
        ),
      ),
    );
  }
}
