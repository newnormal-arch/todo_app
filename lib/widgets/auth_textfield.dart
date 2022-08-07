import 'package:flutter/material.dart';

import '../constants.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    Key? key,
    required this.keyboardType,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: primaryTextOpacityColor,
            fontSize: 13,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: const BorderSide(
              color: primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: const BorderSide(
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
