import 'package:dynamic_form_builder1/src/models/text_field_config.dart';
import 'package:flutter/material.dart';

class DynamicTextFormField extends StatelessWidget {
  final TextFieldConfig config;
  final TextEditingController controller;

  const DynamicTextFormField({
    super.key,
    required this.config,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: config.keyboardType,
      obscureText: config.obscureText,
      maxLength: config.maxLength,
      decoration: InputDecoration(
        labelText: config.label,
        hintText: config.hint,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (config.required && (value == null || value.isEmpty)) {
          return '${config.label} is required';
        }
        return null;
      },
    );
  }
}
