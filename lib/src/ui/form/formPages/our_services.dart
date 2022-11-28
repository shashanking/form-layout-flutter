import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Services',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 15),
        Text(
          'Please Select which service you are interested in.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                OptionCard(text: 'Development', img: 'assets/icons/dev.png'),
                SizedBox(width: 20),
                OptionCard(text: 'Web Design', img: 'assets/icons/webdev.png')
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                OptionCard(
                    text: 'Marketing', img: 'assets/icons/marketing.png'),
                SizedBox(width: 20),
                OptionCard(text: 'Other', img: 'assets/icons/others.png')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// option tiles
class OptionCard extends StatefulWidget {
  const OptionCard({Key? key, required this.text, required this.img})
      : super(key: key);
  final String text;
  final String img;

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  Color mycolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            (mycolor == Colors.white)
                ? mycolor = Theme.of(context).primaryColor
                : mycolor = Colors.white;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: mycolor),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2.0, 2.0),
                  spreadRadius: 1.0,
                  blurRadius: 2.0,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFF4A3AFF).withOpacity(0.15),
                radius: 20,
                child: Image.asset(
                  widget.img,
                  width: 20,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                widget.text,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 25)
            ],
          ),
        ),
      ),
    );
  }
}
