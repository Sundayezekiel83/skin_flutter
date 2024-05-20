import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/data/dummy_data.dart';
import 'package:mobile_skinguru/screens/professonalScreen/upload_certificate.dart';
import 'package:mobile_skinguru/widget/appointment_card.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/category_item.dart';
import 'package:mobile_skinguru/widget/dashboard_action.dart';

class ProHome extends StatefulWidget {
  const ProHome({super.key});

  @override
  State<ProHome> createState() => _ProHomeState();
}

class _ProHomeState extends State<ProHome> {
  bool isverifed = false;

  @override
  void initState() {
    super.initState();
    if (!isverifed) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const CustomDialog();
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.primary,
      statusBarIconBrightness: Brightness.light, // status bar color
    ));
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Theme.of(context).colorScheme.primary),
                height: 120,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assest/images/profile.png'),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  Text(
                                    "Good day!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: const Color.fromRGBO(
                                              180, 213, 238, 1),
                                        ),
                                  ),
                                  Text(
                                    "Jessical May",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DashboardAction(
                              icon: Icons.notifications,
                              iconBg: Color.fromRGBO(107, 52, 188, .8),
                              iconColor: Colors.white),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90),
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height - 120,
                decoration: const BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CatgoryItem(
                            image: "assest/images/services.svg",
                            title: "Pro/Services",
                          ),
                          CatgoryItem(
                              image: "assest/images/pro.svg",
                              title: "Prescrip"),
                          CatgoryItem(
                            image: "assest/images/post.svg",
                            title: "Post",
                          ),
                          CatgoryItem(
                            image: "assest/images/webinar.svg",
                            title: "Webinar",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 55,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ListTile(
                          title: Text(
                            textAlign: TextAlign.center,
                            "Appointment Schedule and Availiablity",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          // trailing: const Icon(
                          //   Icons.auto_awesome,
                          //   color: Colors.white,
                          // ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 49,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ListTile(
                          title: const Text(
                            "Appointment Request",
                            style: TextStyle(
                                fontSize: 14,
                                color: secondaryText,
                                fontWeight: FontWeight.w500),
                          ),
                          trailing: GestureDetector(
                            child: Text(
                              "Filter: All >",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        itemCount: dummyAppointment.length,
                        itemBuilder: (ctx, index) => AppointmentCard(
                          appointment: dummyAppointment[index],
                          showDate: false,
                          dateBg: Colors.white,
                          dateColor: secondaryText,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return Center(
      child: Container(
        width: 329,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 10),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: const VerifyModal(),
      ),
    );
  }
}

class VerifyModal extends StatelessWidget {
  const VerifyModal({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: double.infinity),
      child: IntrinsicHeight(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.topRight,
                child: const DashboardAction(
                  icon: Icons.highlight_off,
                  iconBg: tertairyColor,
                  iconColor: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(239, 241, 250, 1),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Icon(
                Icons.priority_high_rounded,
                size: 70,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Hey! Dr, Sunday Ezekiel",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "Ready to showcase your expertise? Verify your account to start uploading your fantastic products and services on [Your Skincare App]. Don't miss out—let the world discover your offerings!",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: secondaryText),
            ),
            const SizedBox(height: 30),
            MyButton(
                text: "Verify now",
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (cts) => const UploadCertificate(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
