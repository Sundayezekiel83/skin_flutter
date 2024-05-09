import 'package:flutter/material.dart';

class DashboardAction extends StatelessWidget {
  const DashboardAction(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.iconBg});

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: iconBg, borderRadius: BorderRadius.circular(100)),
      child: Icon(icon, color: iconColor),
    );
  }
}
