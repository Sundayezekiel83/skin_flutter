import 'package:flutter/material.dart';
import 'package:mobile_skinguru/widget/category_item.dart';

class CategoryAction extends StatelessWidget {
  const CategoryAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CatgoryItem(image: "assest/images/pro.svg", title: "Professionals"),
        CatgoryItem(image: "assest/images/Clinic.svg", title: "Our Clinics"),
        CatgoryItem(image: "assest/images/spa.svg", title: "Our Spas"),
      ],
    );
  }
}
