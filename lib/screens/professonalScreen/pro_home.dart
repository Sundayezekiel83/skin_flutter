import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/data/dummy_data.dart';
import 'package:mobile_skinguru/widget/appointment_card.dart';
import 'package:mobile_skinguru/widget/category_item.dart';
import 'package:mobile_skinguru/widget/dashboard_action.dart';

class ProHome extends StatelessWidget {
  const ProHome({super.key});
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
