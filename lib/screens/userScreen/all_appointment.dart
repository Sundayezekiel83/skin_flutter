import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/data/dummy_data.dart';
import 'package:mobile_skinguru/widget/appointment_card.dart';

class AllAppointment extends StatelessWidget {
  const AllAppointment({super.key});

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
                  "Appointment",
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
          Expanded(
            child: ListView.builder(
              itemCount: dummyAppointment.length,
              itemBuilder: (ctx, index) => AppointmentCard(
                appointment: dummyAppointment[index],
                dateBg: Theme.of(context).colorScheme.primary,
                dateColor: Colors.white,
                showDate: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
