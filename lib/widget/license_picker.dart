import 'package:flutter/material.dart';
import 'package:mobile_skinguru/constants/constants.dart';

class LicensePicker extends StatelessWidget {
  const LicensePicker(
      {super.key,
      required this.fileName,
      required this.upload,
      required this.deleteUpload});
  final String fileName;
  final void Function() upload;
  final void Function() deleteUpload;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          title: Text(
            "License or Certification:",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.black),
          ),
          trailing: Text(
            fileName == "" ? "Required *" : "Uploaded",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: fileName == ""
                    ? Colors.red
                    : Theme.of(context).colorScheme.primary),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Request a copy of the professional's skincare license or certification. This ensures they are officially recognized and qualified in their field.",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: secondaryText),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextButton(
            onPressed: upload,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              foregroundColor: secondaryText,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                side: const BorderSide(color: secondaryText), // Border color
              ),
            ),
            child: Text(
              fileName == "" ? "Upload" : "Change file",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(height: 10),
        if (fileName != "")
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fileName,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                    onTap: deleteUpload,
                    child: const Icon(Icons.delete, color: secondaryText))
              ],
            ),
          ),
        const SizedBox(height: 10),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.04),
          thickness: 1.0,
        ),
      ],
    );
  }
}
