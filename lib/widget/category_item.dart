import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_skinguru/constants/constants.dart';

class CatgoryItem extends StatelessWidget {
  const CatgoryItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: secondaryText),
        )
      ],
    );
  }
}
