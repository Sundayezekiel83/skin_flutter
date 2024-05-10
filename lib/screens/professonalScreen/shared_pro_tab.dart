import 'package:flutter/material.dart';

class ShareProTabs extends StatefulWidget {
  const ShareProTabs({super.key});

  @override
  State<ShareProTabs> createState() => _ShareProTabsState();
}

class _ShareProTabsState extends State<ShareProTabs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Professional Space"),
        ),
        body: Text("Working in Progress"),
      ),
    );
  }
}
