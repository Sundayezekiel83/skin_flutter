import 'package:flutter/material.dart';
import 'package:mobile_skinguru/Auth/professionalauth/licenses.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/custom_onboarding_border.dart';
import 'package:mobile_skinguru/widget/input_label.dart';

class FacilityDetails extends StatelessWidget {
  const FacilityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FacilityDetail(),
        ),
      ),
    );
  }
}

class FacilityDetail extends StatefulWidget {
  const FacilityDetail({super.key});

  @override
  State<FacilityDetail> createState() => _FacilityDetailState();
}

class _FacilityDetailState extends State<FacilityDetail> {
  final _formKey = GlobalKey<FormState>();

  var clinicName = "";

  var address = "";

  var city = "";

  var state = "";

  var zipCode = "";

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
                color: Theme.of(context).colorScheme.primary, w: 210),
            const CustomOnboardingBorder(color: tertairyColor, w: 90)
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
                    const InputLabel(inputlable: "Clinic/Hospital Name"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Cliniic Nam";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'Name of the facility where they practice',
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
                        clinicName = value!;
                      },
                    ),
                    const SizedBox(height: 10),
                    const InputLabel(inputlable: "Address"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Address";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'Enter Address',
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
                        address = value!;
                      },
                    ),
                    const SizedBox(height: 10),
                    const InputLabel(inputlable: "City"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter City";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'Enter City',
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
                        city = value!;
                      },
                    ),
                    const SizedBox(height: 10),
                    const InputLabel(inputlable: "State"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter state";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'Enter State',
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
                        state = value!;
                      },
                    ),
                    const SizedBox(height: 10),
                    const InputLabel(inputlable: "Zip Code"),
                    const SizedBox(height: 10),
                    TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.phone,
                      textCapitalization: TextCapitalization.none,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Zip Code";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      // onChanged: _onChanged,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintText: 'Enter Zip Code',
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
                        zipCode = value!;
                      },
                    ),
                    const SizedBox(height: 30),
                    MyButton(
                        text: "Continue",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (cts) => const Lincenses()),
                          );
                        }),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
