import 'package:flutter/material.dart';
import 'package:test_layout/src/ui/common/button.dart';
import 'package:test_layout/src/ui/form/formPages/contact_details.dart';
import 'package:test_layout/src/ui/form/formPages/our_services.dart';
import 'package:test_layout/src/ui/form/formPages/project_budget.dart';
import 'package:test_layout/src/ui/form/formPages/submit_request.dart';

class StepperForm extends StatefulWidget {
  const StepperForm({Key? key}) : super(key: key);

  @override
  State<StepperForm> createState() => _StepperFormState();
}

class _StepperFormState extends State<StepperForm> {
  int currentStep = 0;

  // step controls
  continued() => currentStep < 3 ? setState(() => currentStep += 1) : null;
  cancelled() => currentStep > 0 ? setState(() => currentStep -= 1) : null;

  // steps list
  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: const Text(''),
          content: const ContactDetails(),
        ),
        Step(
          isActive: currentStep >= 1,
          title: const Text(''),
          content: const OurServices(),
        ),
        Step(
          isActive: currentStep >= 2,
          title: const Text(''),
          content: const ProjectBudget(),
        ),
        Step(
          isActive: currentStep >= 3,
          title: const Text(''),
          content: const SubmitRequest(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Stepper(
      elevation: 0,
      physics: const NeverScrollableScrollPhysics(),
      type: StepperType.horizontal,
      currentStep: currentStep,
      steps: getSteps(),

      // overriding default buttons for step control
      controlsBuilder: (context, _) {
        return Container(
          margin: const EdgeInsets.only(top: 40),
          child: Stack(
            children: <Widget>[
              if (currentStep != 0)
                Align(
                  alignment: Alignment.topLeft,
                  child: Button(
                    onPressed: () {
                      cancelled();
                    },
                    color: Colors.white,
                    child: const Text(
                      'Previous Step',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              if (currentStep != 3)
                Align(
                  alignment: Alignment.topRight,
                  child: Button(
                    onPressed: () {
                      continued();
                    },
                    color: Theme.of(context).primaryColor,
                    child: const Text('Next Step'),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
