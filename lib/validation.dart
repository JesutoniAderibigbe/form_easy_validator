import 'package:flutter/material.dart';
import 'package:form_easy_validator/cool_forms.dart';

class Validator {
  String? Function(String?) validateEmail(
      {String? requiredError, String? invalidError}) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return requiredError ?? 'Please enter an email address';
      }

      // Regular expression to validate email format
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegex.hasMatch(value)) {
        return invalidError ?? 'Please enter a valid email address';
      }

      return null; // Return null to indicate valid input
    };
  }

  // Other validation methods with similar updates

  String? validatePassword(String? value,
      {String? requiredError, String? invalidError, String? passwordRegex}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a password';
    }

    // Regular expression to validate password format
    final passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if (!passwordRegex.hasMatch(value)) {
      return invalidError;
      //  AppLocalizations.of(context).translate('error_invalid_password');
    }

    return null; // Return null to indicate valid input
  }

  String? validateName(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a name';
    }

    // Regular expression to validate name format
    final nameRegex = RegExp(r'^[a-zA-Z ]+$');
    if (!nameRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid name';
    }

    return null; // Return null to indicate valid input
  }

  String? validatePhone(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a phone number';
    }

    // Regular expression to validate phone format
    final phoneRegex = RegExp(r'^[0-9]+$');
    if (!phoneRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid phone number';
    }

    return null; // Return null to indicate valid input
  }

  String? validateAddress(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter an address';
    }

    // Regular expression to validate address format
    final addressRegex = RegExp(r'^[a-zA-Z0-9 ]+$');
    if (!addressRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid address';
    }

    return null; // Return null to indicate valid input
  }

  String? validateCity(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a city';
    }

    // Regular expression to validate city format
    final cityRegex = RegExp(r'^[a-zA-Z ]+$');
    if (!cityRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid city';
    }

    return null; // Return null to indicate valid input
  }

  String? validateState(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a state';
    }

    // Regular expression to validate state format
    final stateRegex = RegExp(r'^[a-zA-Z ]+$');
    if (!stateRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid state';
    }

    return null; // Return null to indicate valid input
  }

  String? validateZip(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a ZIP code';
    }

    // Regular expression to validate ZIP code format
    final zipRegex = RegExp(r'^[0-9]+$');
    if (!zipRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid ZIP code';
    }

    return null; // Return null to indicate valid input
  }

  String? validateCountry(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a country';
    }

    // Regular expression to validate country format
    final countryRegex = RegExp(r'^[a-zA-Z ]+$');
    if (!countryRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid country';
    }

    return null; // Return null to indicate valid input
  }
}
