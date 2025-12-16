# Dynamic Form Builder

A Flutter package to build dynamic form fields.

## Features
- Dynamic TextFormField
- Validation support
- Config-based structure

## Usage
```dart
DynamicTextFormField(
  config: TextFieldConfig(
    name: 'username',
    label: 'Username',
    required: true,
  ),
  controller: TextEditingController(),
)
