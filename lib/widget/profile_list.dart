import 'package:flutter/material.dart';
import 'package:mobile_skinguru/constants/constants.dart';

class ProfileList extends StatelessWidget {
  const ProfileList(
      {super.key, required this.setting, required this.settingIcon});
  final String setting;
  final IconData settingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        settingIcon,
        color: secondaryText,
      ),
      title: Text(
        setting,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: secondaryText),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: secondaryText),
    );
  }
}
