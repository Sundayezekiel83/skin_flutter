import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/dashboard_action.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  "Wallet",
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
          const WalletBalanceCard(),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            alignment: Alignment.centerLeft,
            child: const Row(
              children: [
                Text(
                  "Note:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(
                        107,
                        52,
                        188,
                        1,
                      )),
                ),
                SizedBox(width: 4),
                SizedBox(
                  width: 280,
                  child: Text(
                    "You can also save money for a particular purpose with time just simply use our savings area. the Piggy Icon Above",
                    style: TextStyle(fontSize: 12, color: secondaryText),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          MyButton(onPressed: () {}, text: "Top Up Wallet"),
        ],
      ),
    );
  }
}

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.hardEdge,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Avaliable Balance",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: secondaryText),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "N50,00000",
                                      style: GoogleFonts.montserrat(
                                          color: Color.fromRGBO(
                                            107,
                                            52,
                                            188,
                                            1,
                                          ),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  color: secondaryText,
                                ),
                              ],
                            ),
                            DashboardAction(
                                icon: Icons.savings_rounded,
                                iconColor:
                                    Theme.of(context).colorScheme.primary,
                                iconBg: tertairyColor)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Skin",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600, fontSize: 22),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Guru",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Color.fromRGBO(107, 52, 188, 1),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 3,
                right: 2,
                child: SvgPicture.asset(
                  'assest/images/Intersect.svg',
                  fit: BoxFit.contain,
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
