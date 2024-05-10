import 'package:flutter/material.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/screens/tabs.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/custom_onboarding_border.dart';
import 'package:mobile_skinguru/widget/input_label.dart';

class AddtionalInformation extends StatefulWidget {
  const AddtionalInformation({super.key});

  @override
  State<AddtionalInformation> createState() => _AddtionalInformationState();
}

class _AddtionalInformationState extends State<AddtionalInformation> {
  var _formKey = GlobalKey<FormState>();

  var _firstName = "";
  var _lastName = "";
  var _gender = "";
  var _date = "";
  var _phone = "";
  void onSaved() {
    var isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                    const SizedBox(width: 60),
                    Text(
                      "Additional Information",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.black),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.04),
                thickness: 1.0,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomOnboardingBorder(
                      color: Theme.of(context).colorScheme.primary, w: 50),
                  const SizedBox(width: 10),
                  const CustomOnboardingBorder(color: tertairyColor, w: 30)
                ],
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const InputLabel(inputlable: "First Name"),
                      const SizedBox(height: 10),
                      TextFormField(
                        autofocus: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter first Name";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textAlign: TextAlign.start,
                        // onChanged: _onChanged,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: 'Mobbin',
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
                          _firstName = value!;
                        },
                      ),
                      const SizedBox(height: 10),
                      const InputLabel(inputlable: "Last Name"),
                      const SizedBox(height: 10),
                      TextFormField(
                        autofocus: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Last Name";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textAlign: TextAlign.start,
                        // onChanged: _onChanged,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: 'Emmanuel',
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
                          _lastName = value!;
                        },
                      ),
                      const SizedBox(height: 10),
                      const InputLabel(inputlable: "Gender"),
                      const SizedBox(height: 10),
                      TextFormField(
                        autofocus: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Gender";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textAlign: TextAlign.start,
                        // onChanged: _onChanged,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: 'Male or Female',
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
                          _gender = value!;
                        },
                      ),
                      const SizedBox(height: 10),
                      const InputLabel(inputlable: "Date of Birth"),
                      const SizedBox(height: 10),
                      TextFormField(
                        autofocus: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Select Date of Birth";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textAlign: TextAlign.start,
                        // onChanged: _onChanged,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: '02/12/1992',
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
                          _date = value!;
                        },
                      ),
                      const SizedBox(height: 10),
                      const InputLabel(inputlable: "Phone Number"),
                      const SizedBox(height: 10),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.phone,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Phone number";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textAlign: TextAlign.start,
                        // onChanged: _onChanged,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          hintText: '08166935765',
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
                          _phone = value!;
                        },
                      ),
                      const SizedBox(height: 30),
                      MyButton(
                          text: "Continue",
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (cts) => SharedTabs()),
                            );
                          }),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
