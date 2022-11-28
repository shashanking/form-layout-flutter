import 'package:flutter/material.dart';
import 'package:test_layout/src/ui/form/stepper_form.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: MediaQuery.of(context).size.width / 2.5,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Get a project quote',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Text(
                      'Please fill the form below to receive a quote for your project. Feel free to add as much detail as needed.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                padding: const EdgeInsets.all(8.0),
                child: const StepperForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
