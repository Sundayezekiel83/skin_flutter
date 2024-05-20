import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_skinguru/screens/professonalScreen/doc_review.dart';
import 'package:mobile_skinguru/widget/license_picker.dart';

class UploadCertificate extends StatefulWidget {
  const UploadCertificate({super.key});

  @override
  State<UploadCertificate> createState() => _UploadCertificateState();
}

class _UploadCertificateState extends State<UploadCertificate> {
  String _lincense = "";
  String _lincensetwo = "";
  String _lincensethree = "";

  void _openFileExplorer(String identifier) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        setState(() {
          if (identifier == "license") {
            _lincense = result.files.single.name;
          } else if (identifier == "licensetwo") {
            _lincensetwo = result.files.single.name;
          } else {
            _lincensethree = result.files.single.name;
          }
        });

        print(_lincense);
        print(_lincensetwo);
        print(_lincensethree);
        // Now you can use the identifier along with the file name or any other processing
        // print('Identifier: $identifier, Selected File: $_fileName');
      }
    } catch (e) {
      print('Error while picking the file: $e');
    }
  }

  void _deleteOpenFileExplorer(String identifier) {
    setState(() {
      if (identifier == "license") {
        _lincense = "";
      } else if (identifier == "licensetwo") {
        _lincensetwo = "";
      } else {
        _lincensethree = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark, // status bar color
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              LicensePicker(
                fileName: _lincense,
                upload: () {
                  _openFileExplorer("license");
                },
                deleteUpload: () {
                  _deleteOpenFileExplorer("license");
                },
              ),
              LicensePicker(
                fileName: _lincensetwo,
                upload: () {
                  _openFileExplorer("licensetwo");
                },
                deleteUpload: () {
                  _deleteOpenFileExplorer("licensetwo");
                },
              ),
              LicensePicker(
                fileName: _lincensethree,
                upload: () {
                  _openFileExplorer("licensethree");
                },
                deleteUpload: () {
                  _deleteOpenFileExplorer("licensethree");
                },
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width - 30,
                  child: ElevatedButton(
                    onPressed: _lincense.isNotEmpty &&
                            _lincensetwo.isNotEmpty &&
                            _lincensethree.isNotEmpty
                        ? () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (cts) => const DocumentReview()),
                            );
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // background color
                      backgroundColor:
                          Theme.of(context).colorScheme.primary, // text color
                      padding: const EdgeInsets.all(20.0), // button padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      elevation: 5.0, // button elevation
                    ),
                    child: Text("Submit",
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
