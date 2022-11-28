import 'package:flutter/material.dart';
import 'package:test_layout/src/ui/common/button.dart';

class SubmitRequest extends StatelessWidget {
  const SubmitRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/images/Done.png',
            width: 80,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Submit your quote request',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Text(
            'Please review all the information you previously typed in the past steps, and if all is okay, submit your message to receive a project quote in 24 - 48 hours.',
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        Button(
          child: const Text('Submit'),
          color: Theme.of(context).primaryColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
