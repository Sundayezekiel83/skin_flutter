import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/custom_onboarding_border.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key, required this.switchScreen});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(height: 50),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.04),
          thickness: 1.0,
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assest/images/onboard.svg'),
              const SizedBox(height: 40),
              Text(
                "Welcome to Skin",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black),
              ),
              Text(
                "Guru",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(height: 5),
              Text(
                "Skin Guru makes caring for your skin easy. Message your dermatologist, track skin conditions, and schedule appointments all in one place.",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: const Color.fromRGBO(112, 112, 112, 1)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomOnboardingBorder(
                          color: Theme.of(context).colorScheme.primary, w: 39),
                      const SizedBox(width: 10),
                      const CustomOnboardingBorder(color: tertairyColor, w: 28),
                      const SizedBox(width: 10),
                      const CustomOnboardingBorder(color: tertairyColor, w: 28),
                    ],
                  ),
                  GestureDetector(
                    onTap: switchScreen,
                    child: SvgPicture.asset('assest/images/onboardicon.svg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
