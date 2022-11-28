import 'package:flutter/material.dart';
import 'package:test_layout/src/ui/common/button.dart';

import '../common/button.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2.0, 2.0),
              spreadRadius: 1.0,
              blurRadius: 2.0,
            )
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          //TextField for email sumbission
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'example@test.com',
                border: InputBorder.none,
              ),
            ),
          ),
          Button(
            child: const Text('Subscribe'),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
