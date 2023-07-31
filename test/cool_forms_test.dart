import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_easy_validator/cool_forms.dart';
import 'package:form_easy_validator/validation.dart';
//import 'package:your_package_name_here/form_easy_validator.dart';

void main() {
//   test('Email Validation - Empty Value', () {
//     // Create an instance of the FormEasyValidator
//     var response = Validator();
//     final result2 = response.validateEmail("");

// // Pass an empty value to the validateEmail method

//     // Expect that the result should be the error message for an empty email
//     expect(result2, 'Please enter an email address');
//   });

//   test('Email Validation - Invalid Value', () {
//     var validator = Validator(); // Create an instance of the FormEasyValidator
//     final result =
//         validator.validateEmail('invalidemail'); // Pass an invalid email value

//     // Expect that the result should be the error message for an invalid email
//     expect(result, 'Please enter a valid email address');
//   });

//   test('Email Validation - Valid Value', () {
//     var validator = Validator(); // Create an instance of the FormEasyValidator
//     final result =
//         validator.validateEmail('valid@email.com'); // Pass a valid email value

//     // Expect that the result should be null, indicating a valid input
//     expect(result, isNull);
//   });

  //Validate Address Test
  test('Address Validation - Empty Value', () {
    var validator = Validator(); // Create an instance of the FormEasyValidator

    final result = validator
        .validateAddress(''); // Pass an empty value to the validateEmail method

    // Expect that the result should be the error message for an empty email
    expect(result, 'Please enter an address');
  });

  test('Address Validation - Invalid Value', () {
    var validator = Validator(); //Create an instance of the FormEasyValidator
    final result =
        validator.validateAddress('mmdmmdmmd'); // Pass an invalid email value

    // Expect that the result should be the error message for an invalid email
    expect(result, 'Please enter a valid address');
  });

  test('Address Validation - Valid Value', () {
    final validator =
        Validator(); // Create an instance of the FormEasyValidator
    final result = validator.validateAddress(
        '2 Alh Adeyemo, Iyana Olopa, Akobo, Ibadan.'); // Pass a valid email value

    // Expect that the result should be null, indicating a valid input
    expect(result, isNull);
  });

  //PHONE VALIDATION TEST

  test('Phone Validation - Empty Value', () {
    var validator = Validator();
    final result = validator.validatePhone('');

    expect(result, 'Please enter a valid phone number');
  });

  test('Phone Validation - Invalid Value', () {
    var validator = Validator();

    final result = validator.validatePhone('invalidphone');

    expect(result, 'Please enter a valid phone number');
  });

  test('Phone Validation - Valid Value', () {
    var validator = Validator();
    final result = validator.validatePhone('1234567890');

    expect(result, isNull);
  });
}
