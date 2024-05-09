import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_skinguru/Model/appointment.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/dashboard_action.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard(
      {super.key, required this.appointment, required this.showDate});
  final Appointment appointment;
  final bool showDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showDate)
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              DateFormat.yMEd().add_jms().format(appointment.date),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: secondaryText),
            ),
          ),
        const SizedBox(height: 10),
        Card(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.hardEdge,
          color: const Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 76,
                              height: 76,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(appointment.imageUrl),
                                ),
                              ),
                            ),
                            DashboardAction(
                                icon: Icons.chat,
                                iconBg: tertairyColor,
                                iconColor:
                                    Theme.of(context).colorScheme.primary)
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              appointment.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Service",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: secondaryText),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${appointment.consultation.name} consultation',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: secondaryText),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Chat",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: secondaryText),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "Status:",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: secondaryText),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    color: appointment.status.name == "accepted"
                                        ? acceptedColor
                                        : appointment.status.name == "declined"
                                            ? Colors.red
                                            : appointment.status.name ==
                                                    "pending"
                                                ? pendingColor
                                                : tertairyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    appointment.status.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            color: appointment.status.name ==
                                                    "pending"
                                                ? Colors.amber
                                                : appointment.status.name ==
                                                        "completed"
                                                    ? secondaryText
                                                    : Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const Icon(Icons.more_vert)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 39,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(color: Theme.of(context).colorScheme.primary),
                // child: Text("how are you doing")
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_rounded,
                              color: Colors.white),
                          const SizedBox(width: 5),
                          Text(
                            'Date: ${DateFormat('yyyy-MM-dd').format(appointment.date)}',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                      Text(
                        DateFormat('HH:mm:ss').format(appointment.date),
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
