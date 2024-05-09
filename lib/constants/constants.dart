import 'package:flutter/material.dart';

final outlineInputBorderBig = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide:
      const BorderSide(color: Color.fromRGBO(93, 48, 156, 1), width: .1),
);
final outlineInputBorderBigErr = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide:
      const BorderSide(color: Color.fromRGBO(93, 48, 156, 1), width: .4),
);
const outlineInputBorderFocused = OutlineInputBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  ),
  borderSide: BorderSide(color: Color.fromRGBO(93, 48, 156, 1), width: 2),
);
final outlineInputBorderSearch = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(color: Colors.white, width: .6),
);

final outlineInputBorderSearchDim = OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(color: Colors.grey.shade200, width: 0),
);
const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  ),
  borderSide: BorderSide(
    color: Color.fromRGBO(239, 241, 250, 1),
  ),
);
const outlineInputBorderError = OutlineInputBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  ),
  borderSide: BorderSide(color: Color.fromRGBO(93, 48, 156, 1), width: .4),
);

var outlineInputBorderCount = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: Color.fromRGBO(93, 48, 156, 1),
    width: 1.5,
  ),
);
// var numberFormatter = NumberTextInputFormatter();

// class NumberTextInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     if (newValue.text.isEmpty) {
//       return newValue.copyWith(text: '');
//     }

//     final numericValue = int.tryParse(newValue.text.replaceAll(',', ''));
//     if (numericValue == null) {
//       return oldValue;
//     }

//     final formattedValue = NumberFormat('#,###').format(numericValue);
//     return TextEditingValue(
//       text: formattedValue,
//       selection: TextSelection.collapsed(offset: formattedValue.length),
//     );
//   }
// }
const secondaryText = Color.fromRGBO(131, 137, 168, 1);
const tertairyColor = Color.fromRGBO(239, 241, 250, 1);
const primarylessopacity = Color.fromRGBO(107, 52, 188, 0.04);
const acceptedColor = Color.fromRGBO(0, 156, 119, 1);
const pendingColor = Color.fromRGBO(255, 199, 39, 0.1);
const backgroundColor = Color.fromRGBO(243, 243, 243, 1);
