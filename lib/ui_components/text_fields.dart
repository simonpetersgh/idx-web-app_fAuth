// Login ui widgets component
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // field variables
  final controller;
  final String hintText;
  final bool obscureText;
  final Widget icon;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: icon,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
