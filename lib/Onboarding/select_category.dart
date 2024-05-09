import 'package:flutter/material.dart';
import 'package:mobile_skinguru/Auth/login.dart';
import 'package:mobile_skinguru/widget/button.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key, required this.backScreen});

  final void Function() backScreen;

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  int _selectedItem = 0;

  void handleAuth() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Login(selectedRoute: _selectedItem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: widget.backScreen,
                  child: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                const SizedBox(width: 60),
                Text("Select Category",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.black))
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(0, 0, 0, 0.04),
            thickness: 1.0,
          ),
          const SizedBox(height: 50),
          Center(
            child: Column(
              children: [
                Text(
                  "Who are you?",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Select from one of the",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromRGBO(131, 137, 168, 1),
                      ),
                ),
                Text(
                  "Categories below",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromRGBO(131, 137, 168, 1),
                      ),
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedItem = 0;
                            });
                          },
                          child: Container(
                            width: 132,
                            height: 132,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(239, 241, 250, 1),
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                  color: _selectedItem == 0
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.transparent,
                                  width: 2.49),
                            ),
                            child: Icon(
                              Icons.person,
                              color: _selectedItem == 0
                                  ? Theme.of(context).colorScheme.primary
                                  : const Color.fromRGBO(131, 137, 168, 1),
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "User",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                color: _selectedItem == 0
                                    ? Theme.of(context).colorScheme.primary
                                    : const Color.fromRGBO(137, 137, 137, 1),
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedItem = 1;
                            });
                          },
                          child: Container(
                            width: 132,
                            height: 132,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(239, 241, 250, 1),
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(
                                    color: _selectedItem == 1
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.transparent,
                                    width: 2.49)),
                            child: Icon(
                              Icons.engineering_rounded,
                              color: _selectedItem == 1
                                  ? Theme.of(context).colorScheme.primary
                                  : const Color.fromRGBO(131, 137, 168, 1),
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Professional",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                color: _selectedItem == 1
                                    ? Theme.of(context).colorScheme.primary
                                    : const Color.fromRGBO(137, 137, 137, 1),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                MyButton(text: "Continue", onPressed: handleAuth),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Already have an account",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
