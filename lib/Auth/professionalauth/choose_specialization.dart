import 'package:flutter/material.dart';
import 'package:mobile_skinguru/Auth/professionalauth/facility_details.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/custom_onboarding_border.dart';

class ChooseSpeciliazation extends StatefulWidget {
  const ChooseSpeciliazation({super.key});

  @override
  State<ChooseSpeciliazation> createState() => _ChooseSpeciliazationState();
}

class _ChooseSpeciliazationState extends State<ChooseSpeciliazation> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ChooseField(),
        ),
      ),
    );
  }
}

class ChooseField extends StatefulWidget {
  const ChooseField({super.key});
  @override
  State<ChooseField> createState() => _ChooseFieldState();
}

class _ChooseFieldState extends State<ChooseField> {
  final List<String> Fields = [
    "Dermatologist",
    "Aesthetic Doctor",
    "Aesthetic Nurse",
    "Medical Aestheician",
    "Therapist"
  ];

  var selectedItem = "Dermatologist";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Text(
                "Set Profile",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.black),
              ),
              Text(
                "Skip",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
        ),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.04),
          thickness: 1.0,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOnboardingBorder(
                color: Theme.of(context).colorScheme.primary, w: 150),
            const CustomOnboardingBorder(color: tertairyColor, w: 150)
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: Fields.map((item) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = item;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: selectedItem == item
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
                    border: Border.all(color: tertairyColor),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    item,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: selectedItem == item
                            ? Colors.white
                            : secondaryText),
                  ),
                ),
              )).toList(),
        ),
        const SizedBox(height: 100),
        MyButton(
            text: "Continue",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (cts) => const FacilityDetails(),
                ),
              );
            })
      ],
    );
  }
}
