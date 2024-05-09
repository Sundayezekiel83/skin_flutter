import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/button.dart';

class PasswordSent extends StatelessWidget {
  const PasswordSent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  const SizedBox(width: 60),
                  Text(
                    "Forget Password",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
            const Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            const SizedBox(height: 100),
            SvgPicture.asset('assest/images/background-complete.svg'),
            const SizedBox(height: 30),
            Text(
              "Sent",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "Password Reset link has been sent to Joh********16@gmail,com",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: secondaryText),
            ),
            const SizedBox(height: 10),
            MyButton(
                text: "Continue",
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                }),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Change email and send again",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
