import 'package:flutter/material.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/screens/professonalScreen/pro_home.dart';
import 'package:mobile_skinguru/screens/userScreen/all_appointment.dart';
import 'package:mobile_skinguru/screens/userScreen/history.dart';
import 'package:mobile_skinguru/screens/userScreen/profile.dart';
import 'package:mobile_skinguru/screens/wallet.dart';

class SharedProTabs extends StatefulWidget {
  const SharedProTabs({super.key});

  @override
  State<SharedProTabs> createState() => _SharedProTabsState();
}

class _SharedProTabsState extends State<SharedProTabs> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    ProHome(),
    AllAppointment(),
    History(),
    Wallet(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Custom Bottom Navigation Bar'),
        // ),

        body: _widgetOptions.elementAt(_selectedIndex),

        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            buildNavBarItem(Icons.other_houses, 'Home', 0),
            buildNavBarItem(Icons.calendar_month_rounded, 'Appoint..', 1),
            buildNavBarItem(Icons.query_builder, 'History', 2),
            buildNavBarItem(Icons.account_balance_wallet_outlined, 'Wallet', 3),
            buildNavBarItem(Icons.person, 'Profile', 4)
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          unselectedItemColor: secondaryText,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  BottomNavigationBarItem buildNavBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        width: 47,
        padding: const EdgeInsets.only(top: 8.0),
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 10, color: Theme.of(context).colorScheme.primary),
                ),
              )
            : null,
        child: Icon(icon),
      ),
      label: label,
    );
  }
}
