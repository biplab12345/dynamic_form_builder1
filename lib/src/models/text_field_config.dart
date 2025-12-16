import 'package:flutter/material.dart';

class TextFieldConfig {
  final String name;
  final String label;
  final String? hint;
  final bool required;
  final int? maxLength;
  final TextInputType keyboardType;
  final bool obscureText;

  TextFieldConfig({
    required this.name,
    required this.label,
    this.hint,
    this.required = false,
    this.maxLength,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });
}
