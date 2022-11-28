import 'package:flutter/material.dart';
import 'package:test_layout/src/ui/components/subscribe_button.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 0.5, color: Colors.grey))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/icons/logo.png",
                  width: 140,
                ),
                Text(
                  'Copyright © 2021 BRIX Templates | All Rights Reserved',
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
            const SubscribeButton(),
          ],
        ),
      ),
    );
  }
}
