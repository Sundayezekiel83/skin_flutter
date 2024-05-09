import 'package:flutter/material.dart';
import 'package:mobile_skinguru/Auth/password_sent.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/input_label.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  var _email = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  "Forget Password",
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
          const SizedBox(height: 40),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Forget",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Password?",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const InputLabel(inputlable: "Email"),
                const SizedBox(height: 10),
                TextFormField(
                  autofocus: false,
                  textCapitalization: TextCapitalization.none,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your email";
                    }
                    if (!value.contains('@')) return "Email is invalid";
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  // onChanged: _onChanged,
                  // style: GlobalStyle.normal,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'sunny@gmail.com',
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
                    _email = value!;
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "* We will send you a message to set or reset your new password",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: secondaryText),
                ),
                const SizedBox(height: 50),
                MyButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (c) => const PasswordSent(),
                      ));
                    })
              ],
            ),
          )
        ],
      ),
    )));
  }
}
