import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Details',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 15),
        Text(
          'Lorem ipsum dolor sit amet consectetur adipisc.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: InputWithTitle(
                      title: 'Name',
                      hintText: 'Jonny Depp',
                      icon: Icons.person),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: InputWithTitle(
                      title: 'Email',
                      hintText: 'Email Address',
                      icon: Icons.mail),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Expanded(
                  child: InputWithTitle(
                      title: 'Phone Number',
                      hintText: '(91) 1236-2341-321',
                      icon: Icons.phone),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: InputWithTitle(
                      title: 'Company',
                      hintText: 'Company Name',
                      icon: Icons.document_scanner),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class InputWithTitle extends StatelessWidget {
  const InputWithTitle(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.icon})
      : super(key: key);
  final String title;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade200,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(25)),
          child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(icon),
                ),
              ),
              style: Theme.of(context).textTheme.bodyText2),
        )
      ],
    );
  }
}
