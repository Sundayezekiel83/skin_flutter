import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_skinguru/widget/custom_onboarding_border.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding(
      {super.key, required this.switchScreen, required this.backScreen});
  final void Function() switchScreen;
  final void Function() backScreen;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: backScreen,
                child: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
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
                  SvgPicture.asset('assest/images/pana.svg'),
                  const SizedBox(height: 40),
                  Text(
                    "Connect with Your",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    "Dermatologist",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Ask questions and get guidance between visits through secure in-app messaging, Chat and Calls",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromRGBO(112, 112, 112, 1)),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CustomOnboardingBorder(
                              color: Color.fromRGBO(239, 241, 250, 1), w: 28),
                          const SizedBox(width: 10),
                          CustomOnboardingBorder(
                              color: Theme.of(context).colorScheme.primary,
                              w: 39),
                          const SizedBox(width: 10),
                          const CustomOnboardingBorder(
                              color: Color.fromRGBO(239, 241, 250, 1), w: 28),
                        ],
                      ),
                      GestureDetector(
                        onTap: switchScreen,
                        child: SvgPicture.asset('assest/images/gonext.svg'),
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
