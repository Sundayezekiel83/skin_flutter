import 'package:flutter/material.dart';
import 'package:mobile_skinguru/Auth/forget_password.dart';
import 'package:mobile_skinguru/Auth/professionalauth/create_pro_account.dart';
import 'package:mobile_skinguru/Auth/userauth/create_user_account.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/screens/professonalScreen/shared_pro_tab.dart';
import 'package:mobile_skinguru/screens/tabs.dart';
import 'package:mobile_skinguru/widget/button.dart';
import 'package:mobile_skinguru/widget/signin_option.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.selectedRoute});

  final int selectedRoute;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

  final _formKey = GlobalKey<FormState>();

  var _email = "";
  var _password = "";

  void onSaved() {
    var isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    if (widget.selectedRoute == 0) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const SharedTabs(),
        ),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const ShareProTabs(),
        ),
      );
    }

    // print(_email);
    // print(_password);
  }

  void createAccount() {
    if (widget.selectedRoute == 0) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const CreateUserAccount()),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const CreateProfessionalAccount()),
      );
    }
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
                  "Login",
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
              const SizedBox(height: 40),
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
                        widget.selectedRoute == 1
                            ? Icons.engineering_rounded
                            : Icons.person,
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
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  textAlign: TextAlign.left,
                                  "Email",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: Colors.black)),
                            ),
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
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Password",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: Colors.black)),
                            ),
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
                                hintText: 'Enter you password',
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
                            // const Spacer(),

                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ct) => const ForgetPassword(),
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            MyButton(text: "Continue", onPressed: onSaved),
                            const SizedBox(height: 50),
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
                                  "Dont have an account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: secondaryText),
                                ),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: createAccount,
                                  child: Text(
                                    "Create Account",
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
