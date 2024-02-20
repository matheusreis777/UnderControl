// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';

class BrasilTextField extends StatefulWidget {
  const BrasilTextField({
    Key? key,
    this.width,
    this.height,
    required this.value,
    required this.filledColor,
    required this.fontSize,
    required this.colorText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String value;
  final Color filledColor;
  final double fontSize;
  final Color colorText;

  @override
  _BrasilTextFieldState createState() => _BrasilTextFieldState();
}

class _BrasilTextFieldState extends State<BrasilTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      keyboardType: TextInputType.number,
      inputFormatters: [
        CurrencyTextInputFormatter(
          locale: 'pt_BR',
          decimalDigits: 2,
          symbol: 'R\$ ',
          enableNegative: true,
        ),
        LengthLimitingTextInputFormatter(16),
      ],
      style: TextStyle(
        fontWeight: FontWeight.normal,
        color: widget.colorText,
        fontSize: widget.fontSize,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        filled: true,
        fillColor: widget.filledColor,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF4b39ef)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF4b39ef)),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: Colors.red), // Change to your error color
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.redAccent), // Change to your focused error color
        ),
        hintText: 'Enter your value', // Add a hint text
        hintStyle: TextStyle(color: Colors.grey),
      ),
      onChanged: (text) {
        print("valor FomartValue");
        print(text);
        // if (text.contains("R\$ ")) {
        //   // value = value.replaceAll("R\$ ", "");
        //   text = text.replaceAll("R\$ ", "");
        //   String sanitizedValue = text.replaceAll('.', '').replaceAll(',', '.');
        //   double result = double.parse(sanitizedValue);
        //   print(result);
        //   if (result > 0) {
        FFAppState().valueFormat =
            text; // mude para o nome que está no seu localState
        // } else {
        //   FFAppState().valueFormat = "R\$ 0.00";
        // }
        // }
      },
    );
  }
}
