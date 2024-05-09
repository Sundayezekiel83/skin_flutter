import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_skinguru/constants/constants.dart';

class HomeSlide extends StatefulWidget {
  const HomeSlide({super.key});

  @override
  State<HomeSlide> createState() => _HomeSlideState();
}

class _HomeSlideState extends State<HomeSlide> {
  var currentIndex = 0;
  final List<String> images = [
    'assest/images/carousel.jpg',
    'assest/images/carousel.jpg',
    'assest/images/carousel.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: CarouselSlider(
                items: [
                  for (String image in images)
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
                options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 1,
                    onPageChanged: (index, _) => setState(() {
                          currentIndex = index;
                        }),
                    autoPlay: true),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cleanse, apply evenly",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "rinse, Moisturize",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Protect",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < images.length; i++)
              Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  color: i == currentIndex
                      ? Theme.of(context).colorScheme.primary
                      : secondaryText,
                  border: Border.all(
                    color: i == currentIndex
                        ? Theme.of(context).colorScheme.primary
                        : secondaryText,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
