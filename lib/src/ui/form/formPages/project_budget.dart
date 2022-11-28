import 'package:flutter/material.dart';

class ProjectBudget extends StatelessWidget {
  const ProjectBudget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What's your project budget?",
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 15),
        const Text('Please select the project budget range you have in mind.'),
        const SizedBox(height: 22),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BudgetOption(text: '\$5000 - \$10000'),
                SizedBox(width: 20),
                BudgetOption(text: '\$10000 - \$20000')
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BudgetOption(text: '\$20000 - \$50000'),
                SizedBox(width: 20),
                BudgetOption(text: '\$50000+')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// budget option tile
class BudgetOption extends StatefulWidget {
  const BudgetOption({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<BudgetOption> createState() => _BudgetOptionState();
}

class _BudgetOptionState extends State<BudgetOption> {
  Color mycolor = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            (mycolor == Colors.grey.shade200)
                ? mycolor = Theme.of(context).primaryColor
                : mycolor = Colors.grey.shade200;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
              Icon(
                Icons.circle,
                size: 15,
                color: mycolor,
              ),
              const SizedBox(width: 10),
              Text(
                widget.text,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 12),
              ),
              const SizedBox(width: 25)
            ],
          ),
        ),
      ),
    );
  }
}
