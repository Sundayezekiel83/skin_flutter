import 'package:flutter/material.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/screens/professonalScreen/shared_pro_tab.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/custom_onboarding_border.dart';
import 'package:mobile_skinguru/widget/input_label.dart';

class Lincenses extends StatelessWidget {
  const Lincenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Lincense(),
        ),
      ),
    );
  }
}

class Lincense extends StatefulWidget {
  const Lincense({super.key});

  @override
  State<Lincense> createState() => _LincenseState();
}

class _LincenseState extends State<Lincense> {
  var lincense = "";
  var hospital = "";
  var selectedYear = "1";
  var selectedDuraction = "Months";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
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
                "Set Profile",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.black),
              ),
              Text(
                "Skip",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
        ),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.04),
          thickness: 1.0,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOnboardingBorder(
                color: Theme.of(context).colorScheme.primary, w: 300),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const InputLabel(inputlable: "Medical License Number"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Lincense";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'og987ujdh',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(112, 112, 112, 1),
                        ),
                        border: outlineInputBorder,
                        filled: true,
                        // focusColor:
                        fillColor: Color.fromRGBO(239, 241, 250, 1),
                        // hoverColor: white,
                        focusedBorder: outlineInputBorderFocused,
                        enabledBorder: outlineInputBorder,
                        disabledBorder: outlineInputBorder,
                        errorBorder: outlineInputBorderError,
                        focusedErrorBorder: outlineInputBorder,
                      ),
                      onSaved: (value) {
                        lincense = value!;
                      },
                    ),
                    const SizedBox(height: 10),
                    const InputLabel(inputlable: "Clinic/Hospital Affliation"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Affliation";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'where the dermatologist practices',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(112, 112, 112, 1),
                        ),
                        border: outlineInputBorder,
                        filled: true,
                        // focusColor:
                        fillColor: Color.fromRGBO(239, 241, 250, 1),
                        // hoverColor: white,
                        focusedBorder: outlineInputBorderFocused,
                        enabledBorder: outlineInputBorder,
                        disabledBorder: outlineInputBorder,
                        errorBorder: outlineInputBorderError,
                        focusedErrorBorder: outlineInputBorder,
                      ),
                      onSaved: (value) {
                        hospital = value!;
                      },
                    ),
                    const SizedBox(height: 20),
                    const InputLabel(inputlable: "Years of Experience"),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width / 2 - 30,
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            color: tertairyColor,
                            borderRadius: BorderRadius.circular(10.0),
                            // border: Border.all(color: tertairyColor),
                          ),
                          child: DropdownButton(
                            underline: Container(),
                            isExpanded: true,
                            value: selectedYear,
                            items: [
                              "1",
                              "2",
                              "3",
                              "4",
                              '5',
                              "6",
                              "7",
                              "8",
                              "9",
                              "10"
                            ]
                                .map(
                                  (category) => DropdownMenuItem(
                                    value: category,
                                    child: Text(
                                      category,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              if (value == null) {
                                return;
                              }
                              setState(() {
                                selectedYear = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width / 2 - 30,
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            color: tertairyColor,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: tertairyColor),
                          ),
                          child: DropdownButton(
                            underline: Container(),
                            isExpanded: true,
                            value: selectedDuraction,
                            items: ["Days", "Months", "Years"]
                                .map(
                                  (category) => DropdownMenuItem(
                                    value: category,
                                    child: Text(
                                      category,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              if (value == null) {
                                return;
                              }
                              setState(() {
                                selectedDuraction = value;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 150),
        MyButton(
            text: "Continue",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const SharedProTabs(),
                ),
              );
            })
      ],
    );
    ;
  }
}
