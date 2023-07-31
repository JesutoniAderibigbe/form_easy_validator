<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This package provides easy form validation for common fields in Flutter applications, such as email and phone numbers. It allows users to customize validation rules and error messages, and supports multiple locales for error messages.

## Features


- Easy form validation for common fields (email, phone, etc.).
- Customizable validation rules and error messages.
- Support for multiple locales for error messages.

## Getting started

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```dart
dependencies:
  form_easy_validator: ^
```

## Usage
```dart

import 'package:flutter/material.dart';
import 'package:form_easy_validator/form_easy_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormEasyValidator(
          padding: EdgeInsets.all(16),
          text: 'Email', // Add the text for the label
          validator: (value) => FormEasyValidator().validateEmail(value),
          appLocale: Locale('en', 'US'),
          textCapitalization: TextCapitalization.none,
        ),
      ),
    );
  }
}
```



## Additional information

For more information about this package and how to use it, you can refer to the documentation.

## Contribution
We welcome contributions to this package! If you find any issues or have suggestions for improvements, please feel free to file an issue or submit a pull request on https://github.com/JesutoniAderibigbe/form_easy_validator.

## License
This project is licensed under the MIT License - see the LICENSE file for details. 
