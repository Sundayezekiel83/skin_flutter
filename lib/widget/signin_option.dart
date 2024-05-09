import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInOption extends StatelessWidget {
  const SignInOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Image.asset('assest/images/google.png'),
        ),
        const SizedBox(width: 5),
        InkWell(
          child: SvgPicture.asset('assest/images/facebook.svg'),
        ),
        const SizedBox(width: 5),
        InkWell(
          child: SvgPicture.asset('assest/images/apple.svg'),
        ),
      ],
    );
  }
}
