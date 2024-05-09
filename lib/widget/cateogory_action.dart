import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_skinguru/constants/constants.dart';

class CategoryAction extends StatelessWidget {
  const CategoryAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SvgPicture.asset('assest/images/pro.svg'),
            Text(
              "Professionals",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: secondaryText),
            )
          ],
        ),
        Column(
          children: [
            SvgPicture.asset('assest/images/Clinic.svg'),
            Text(
              "Our Clinic",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: secondaryText),
            )
          ],
        ),
        Column(
          children: [
            SvgPicture.asset('assest/images/spa.svg'),
            Text(
              "Our Spas",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: secondaryText),
            )
          ],
        )
      ],
    );
  }
}
