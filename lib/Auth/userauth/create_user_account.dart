import 'package:flutter/material.dart';
import 'package:mobile_skinguru/Auth/userauth/AdditionalInfo.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/input_label.dart';
import 'package:mobile_skinguru/widget/signin_option.dart';

class CreateUserAccount extends StatefulWidget {
  const CreateUserAccount({super.key});

  @override
  State<CreateUserAccount> createState() => _CreateUserAccountState();
}

class _CreateUserAccountState extends State<CreateUserAccount> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_outlined;
      } else {
        _iconVisible = Icons.visibility_off_outlined;
      }
    });
  }

  var _email = "";
  var _password = "";
  var _confirmPassowrd = "";
  bool isChecked = false;

  void onSaved() {
    var isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => const AddtionalInformation()),
    );
    // print(_email);
    // print(_password);
    // print(_confirmPassowrd);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Create an Account",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.04),
                thickness: 1.0,
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(239, 241, 250, 1),
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2.49)),
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.primary,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Form(
                        key: _formKey,
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
                                if (!value.contains('@'))
                                  return "Email is invalid";
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              // onChanged: _onChanged,
                              // style: GlobalStyle.normal,
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
                                _email = value!;
                              },
                            ),
                            const SizedBox(height: 10),
                            const InputLabel(inputlable: "Password"),
                            const SizedBox(height: 10),
                            TextFormField(
                              autofocus: false,
                              textCapitalization: TextCapitalization.none,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Password";
                                }
                                return null;
                              },
                              obscureText: _obscureText,
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              // onChanged: _onChanged,
                              // style: GlobalStyle.normal,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: Icon(_iconVisible,
                                        color: Colors.grey[400], size: 20),
                                    onPressed: () {
                                      _toggleObscureText();
                                    }),
                                contentPadding: const EdgeInsets.all(16),
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(112, 112, 112, 1),
                                ),
                                border: outlineInputBorder,
                                filled: true,
                                // focusColor:
                                fillColor:
                                    const Color.fromRGBO(239, 241, 250, 1),
                                // hoverColor: white,
                                focusedBorder: outlineInputBorderFocused,
                                enabledBorder: outlineInputBorder,
                                disabledBorder: outlineInputBorder,
                                errorBorder: outlineInputBorderError,
                                focusedErrorBorder: outlineInputBorder,
                              ),
                              onSaved: (value) {
                                _password = value!;
                              },
                            ),
                            const SizedBox(height: 10),
                            const InputLabel(inputlable: "Confirm Passowrd"),
                            TextFormField(
                              autofocus: false,
                              textCapitalization: TextCapitalization.none,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Confirm Password";
                                }
                                return null;
                              },
                              obscureText: _obscureText,
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              // onChanged: _onChanged,
                              // style: GlobalStyle.normal,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: Icon(_iconVisible,
                                        color: Colors.grey[400], size: 20),
                                    onPressed: () {
                                      _toggleObscureText();
                                    }),
                                contentPadding: const EdgeInsets.all(16),
                                hintText: 'Confirm your Password',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(112, 112, 112, 1),
                                ),
                                border: outlineInputBorder,
                                filled: true,
                                // focusColor:
                                fillColor:
                                    const Color.fromRGBO(239, 241, 250, 1),
                                // hoverColor: white,
                                focusedBorder: outlineInputBorderFocused,
                                enabledBorder: outlineInputBorder,
                                disabledBorder: outlineInputBorder,
                                errorBorder: outlineInputBorderError,
                                focusedErrorBorder: outlineInputBorder,
                              ),
                              onSaved: (value) {
                                _confirmPassowrd = value!;
                              },
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    }),
                                Expanded(
                                  child: Text(
                                    "I certify that I am 18 years of age or older, and I agree to the User Agreement and Privacy Policy",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: secondaryText),
                                    textAlign: TextAlign.justify,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            MyButton(text: "Continue", onPressed: onSaved),
                            const SizedBox(height: 30),
                            Text(
                              textAlign: TextAlign.center,
                              "- OR continue with -",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: secondaryText,
                                  ),
                            ),
                            const SizedBox(height: 20),
                            const SignInOption(),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: secondaryText),
                                ),
                                const SizedBox(width: 8),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Sign in",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
