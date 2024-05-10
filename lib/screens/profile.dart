import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/profile_list.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.dark, // status bar color
      ),
    );
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),
                      Text(
                        "Profile",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.black),
                      ),
                      const Icon(Icons.search, size: 30)
                    ],
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(0, 0, 0, 0.04),
                  thickness: 1.0,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        width: 350,
                        height: 217,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              children: [
                                Text(
                                  "Sunday Ezekiel",
                                  style: GoogleFonts.raleway(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "sundayezekiel83gmail.com",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: secondaryText),
                                ),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        Theme.of(context).colorScheme.primary,
                                    backgroundColor: tertairyColor,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 15),
                                  ),
                                  child: const Text("Edit Profile"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 50,
                        right: 50,
                        child: Center(
                          child: Container(
                            width: 114,
                            height: 114,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 4.0,
                              ),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assest/images/profilepx.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const ProfileSettings()
          ],
        ),
      ),
    );
  }
}

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          children: [
            ProfileList(
                setting: "Prescriptions", settingIcon: Icons.note_add_rounded),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(
                setting: "Product and Services", settingIcon: Icons.work),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(
                setting: "Delivery Address", settingIcon: Icons.contacts),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(setting: "Account", settingIcon: Icons.group),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(
                setting: "Notification Settings",
                settingIcon: Icons.notifications),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(setting: "Change Password", settingIcon: Icons.vpn_key),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(setting: "Language", settingIcon: Icons.language),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(setting: "Help Center", settingIcon: Icons.chat),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0.04),
              thickness: 1.0,
            ),
            ProfileList(setting: "About", settingIcon: Icons.info)
          ],
        ),
      ),
    );
  }
}
