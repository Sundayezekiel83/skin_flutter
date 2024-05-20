import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_skinguru/constants/constants.dart';
import 'package:mobile_skinguru/screens/professonalScreen/shared_pro_tab.dart';
import 'package:mobile_skinguru/widget/button.dart';

class DocumentReview extends StatelessWidget {
  const DocumentReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    const InkWell(
                      child: Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                    const SizedBox(width: 60),
                    Text(
                      "Verify Account",
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
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(239, 241, 250, 1),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Icon(
                  Icons.priority_high_rounded,
                  size: 70,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Document Under Review",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  textAlign: TextAlign.center,
                  "We've received your verification documents. Our team is diligently reviewing them to ensure the highest standards of credibility on [Your Skincare App]. We appreciate your patience and will notify you once the process is complete.",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: secondaryText),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MyButton(
                    text: "Ok Thanks",
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (cts) => const SharedProTabs()),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
