import 'package:flutter/material.dart';

class CustomOnboardingBorder extends StatelessWidget {
  const CustomOnboardingBorder(
      {super.key, required this.color, required this.w});

  final Color color;
  final double w;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 8.0,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: color,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
