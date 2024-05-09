import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/data/dummy_data.dart';
import 'package:mobile_skinguru/widget/appointment_card.dart';
import 'package:mobile_skinguru/widget/cateogory_action.dart';
import 'package:mobile_skinguru/widget/dashboard_action.dart';
import 'package:mobile_skinguru/widget/home_slide.dart';

class Home extends StatelessWidget {
  const Home({super.key});
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
                          Image.asset('assest/images/profile.png'),
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
                          const Row(
                            children: [
                              DashboardAction(
                                icon: Icons.shopping_bag,
                                iconBg: Color.fromRGBO(107, 52, 188, .8),
                                iconColor: Colors.white,
                              ),
                              SizedBox(width: 4),
                              DashboardAction(
                                  icon: Icons.document_scanner,
                                  iconBg: Color.fromRGBO(107, 52, 188, .8),
                                  iconColor: Colors.white),
                              SizedBox(width: 4),
                              DashboardAction(
                                  icon: Icons.notifications,
                                  iconBg: Color.fromRGBO(107, 52, 188, .8),
                                  iconColor: Colors.white),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(top: 95, left: 20, right: 20),
                child: TextFormField(
                  autofocus: false,
                  textCapitalization: TextCapitalization.none,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  // onChanged: _onChanged,
                  // style: GlobalStyle.normal,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 35,
                      color: secondaryText,
                    ),
                    contentPadding: const EdgeInsets.all(16),
                    hintText: 'Search any Service, product...',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: secondaryText,
                    ),
                    filled: true,

                    fillColor: Colors.white,
                    // hoverColor: white,
                    focusedBorder: outlineInputBorderSearch,
                    enabledBorder: outlineInputBorderSearch,
                    // disabledBorder: outlineInputBorder,
                    errorBorder: outlineInputBorderError,
                    focusedErrorBorder: outlineInputBorder,
                  ),
                  // onSaved: (value) {
                  //   _password = value!;
                  // },
                ),
              ),
            ],
          ),
          const HomeSlide(),
          const SizedBox(height: 10),
          const CategoryAction(),
          const SizedBox(height: 15),
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
                  "Not sure who to see? start here",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                trailing: const Icon(
                  Icons.auto_awesome,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 66,
            width: double.infinity,
            decoration: const BoxDecoration(color: primarylessopacity),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListTile(
                title: const Text(
                  "Upcoming Appointments",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "gilroy",
                      fontWeight: FontWeight.w500),
                ),
                trailing: GestureDetector(
                  child: Text(
                    "More >",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Text(
                  "This is your appointment that will come soon",
                  style: TextStyle(
                      fontSize: 12, color: secondaryText, fontFamily: "gilroy"),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: dummyAppointment.length,
              itemBuilder: (ctx, index) => AppointmentCard(
                appointment: dummyAppointment[index],
                showDate: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
