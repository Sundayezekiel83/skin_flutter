import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_skinguru/Onboarding/first.dart';
import 'package:mobile_skinguru/Onboarding/second.dart';
import 'package:mobile_skinguru/Onboarding/select_category.dart';
import 'package:mobile_skinguru/Onboarding/thirdonboarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _activePage = 0;

  void _switchScreen() {
    setState(() {
      _activePage = _activePage + 1;
    });
  }

  void _backScreen() {
    setState(() {
      _activePage = _activePage - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark, // status bar color
    ));

    Widget activeWidget = FirstOnboarding(switchScreen: _switchScreen);
    if (_activePage == 1) {
      activeWidget = SecondOnboarding(
          switchScreen: _switchScreen, backScreen: _backScreen);
    }
    if (_activePage == 2) {
      activeWidget =
          ThirdOnboarding(switchScreen: _switchScreen, backScreen: _backScreen);
    }
    if (_activePage == 3) {
      activeWidget = SelectCategory(backScreen: _backScreen);
    }

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: activeWidget,
    ));
  }
}
