import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mobile_skinguru/Model/history.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/data/dummy_data.dart';

class History extends StatelessWidget {
  const History({super.key});

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
                  "Chats",
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
              itemCount: dummyHistory.length,
              itemBuilder: (ctx, index) => HistoryItem(
                singleHistory: dummyHistory[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.singleHistory});

  final HistoryModel singleHistory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 76,
                    height: 76,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2.0,
                      ),
                      image: DecorationImage(
                        image: AssetImage(singleHistory.imageUrl),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        singleHistory.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black),
                      ),
                      Text(singleHistory.message,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: secondaryText)),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(DateFormat.jm().format(singleHistory.date),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: secondaryText)),
                  Container(
                    width: 20,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      textAlign: TextAlign.end,
                      singleHistory.nochat.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.04),
          thickness: 1.0,
        ),
      ],
    );
  }
}
