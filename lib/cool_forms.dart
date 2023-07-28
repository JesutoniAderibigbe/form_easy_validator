import 'package:flutter/material.dart';
import 'package:form_easy_validator/localization.dart';
import 'package:google_fonts/google_fonts.dart';

class FormEasyValidator extends StatefulWidget {
  final EdgeInsets? padding;
  final String? formtext;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;
  final TextInputType? keyboardType;
  final dynamic? hinttext;
  final IconData? icon;
  final bool showVisibilityToggle; // Option to show/hide visibility toggle
  final IconData? suffixIcon; // Custom suffix icon
  final bool? readonly;
  final TextCapitalization textCapitalization;
  final String? initialValue;
  final TextEditingController? controller;
  final BuildContext? context;
  final Locale appLoacle;
  final String? labeltext;
  final Color? color;
  const FormEasyValidator(
      {super.key,
      this.padding,
      this.formtext,
      this.validator,
      this.textStyle,
      this.keyboardType,
      this.icon,
      this.hinttext,
      this.showVisibilityToggle = false,
      this.suffixIcon,
      this.readonly = false,
      required this.textCapitalization,
      this.initialValue,
      this.controller,
      required this.appLoacle,
      this.context,
      this.color,
      this.labeltext});

  String? validateEmail(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return "Please enter an email address";

      // return requiredError ??
      //     AppLocalizations.of(context).translate('error_required');
    }

    // Regular expression to validate email format
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email address";
      // return invalidError ??
      //     AppLocalizations.of(context).translate('error_invalid_email');
    }

    return null; // Return null to indicate valid input
  }

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
      return requiredError;
      // AppLocalizations.of(context).translate('error_invalid_name');
    }

    // Regular expression to validate name format
    final nameRegex = RegExp(r'^[A-Za-z ]+$');
    if (!nameRegex.hasMatch(value)) {
      return invalidError;
      // AppLocalizations.of(context).translate('error_invalid_name');
    }

    return null; // Return null to indicate valid input
  }

  String? validatePhone(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError;
      // AppLocalizations.of(context).translate('error_invalid_phone');
    }

    // Regular expression to validate phone number format
    final phoneRegex = RegExp(r'^[0-9]+$');
    if (!phoneRegex.hasMatch(value)) {
      return invalidError;
      // AppLocalizations.of(context).translate('error_invalid_phone');
    }

    return null; // Return null to indicate valid input
  }

  String? validateAddress(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter an address';
    }

    // Regular expression to validate address format
    final addressRegex = RegExp(r'^[A-Za-z0-9 ]+$');
    if (!addressRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid address';
    }

    return null; // Return null to indicate valid input
  }

  String? validateCity(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError;
    }

    // Regular expression to validate city format
    final cityRegex = RegExp(r'^[A-Za-z ]+$');
    if (!cityRegex.hasMatch(value)) {
      return invalidError;
    }

    return null; // Return null to indicate valid input
  }

  String? validateState(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError;
      // AppLocalizations.of(context).translate('error_invalid_state');
    }

    // Regular expression to validate state format
    final stateRegex = RegExp(r'^[A-Za-z ]+$');
    if (!stateRegex.hasMatch(value)) {
      return invalidError;
      // ??
      //     AppLocalizations.of(context).translate('error_invalid_state');
    }

    return null; // Return null to indicate valid input
  }

  String? validateZip(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a ZIP code';
      //   AppLocalizations.of(context).translate('error_invalid_zip');
    }

    // Regular expression to validate zip code format
    final zipRegex = RegExp(r'^[0-9]+$');
    if (!zipRegex.hasMatch(value)) {
      return requiredError ?? 'Please enter a valid ZIP code';
      //  AppLocalizations.of(context).translate('error_invalid_zip');
    }

    return null; // Return null to indicate valid input
  }

  String? validateCountry(String? value,
      {String? requiredError, String? invalidError}) {
    if (value == null || value.isEmpty) {
      return requiredError ?? 'Please enter a country';
      // ??
      //     AppLocalizations.of(context)
      //         .translate('Please enter a valid country');
    }

    // Regular expression to validate country format
    final countryRegex = RegExp(r'^[A-Za-z ]+$');
    if (!countryRegex.hasMatch(value)) {
      return invalidError ?? 'Please enter a valid country';
    }

    return null; // Return null to indicate valid input
  }

  // String? validateCardNumber(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return AppLocalizations.of(context)
  //         .translate('error_invalid_card_number');
  //   }

  //   // Regular expression to validate card number format
  //   final cardNumberRegex = RegExp(r'^[0-9]+$');
  //   if (!cardNumberRegex.hasMatch(value)) {
  //     return AppLocalizations.of(context)
  //         .translate('error_invalid_card_number');
  //   }

  //   return null; // Return null to indicate valid input
  // }

  // String? validateCardHolder(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return AppLocalizations.of(context)
  //         .translate('error_invalid_card_holder');
  //   }

  //   // Regular expression to validate card holder format
  //   final cardHolderRegex = RegExp(r'^[A-Za-z ]+$');
  //   if (!cardHolderRegex.hasMatch(value)) {
  //     return AppLocalizations.of(context)
  //         .translate('error_invalid_card_holder');
  //   }

  //   return null; // Return null to indicate valid input
  // }

  // String? validateCardExpiry(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return AppLocalizations.of(context)
  //         .translate('error_invalid_card_expiry');
  //   }

  //   // Regular expression to validate card expiry format
  //   final cardExpiryRegex = RegExp(r'^[0-9]+$');
  //   if (!cardExpiryRegex.hasMatch(value)) {
  //     return AppLocalizations.of(context)
  //         .translate('error_invalid_card_expiry');
  //   }

  //   return null; // Return null to indicate valid input
  // }

  // String? validateCardCVV(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return AppLocalizations.of(context).translate('error_invalid_card_cvv');
  //   }

  //   // Regular expression to validate card CVV format
  //   final cardCVVRegex = RegExp(r'^[0-9]+$');
  //   if (!cardCVVRegex.hasMatch(value)) {
  //     return AppLocalizations.of(context).translate('error_invalid_card_cvv');
  //   }

  //   return null; // Return null to indicate valid input
  // }

  // String? validateCardPIN(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return AppLocalizations.of(context).translate('error_invalid_card_pin');
  //   }

  //   // Regular expression to validate card PIN format
  //   final cardPINRegex = RegExp(r'^[0-9]+$');
  //   if (!cardPINRegex.hasMatch(value)) {
  //     return AppLocalizations.of(context).translate('error_invalid_card_pin');
  //   }

  //   return null; // Return null to indicate valid input
  // }

  @override
  State<FormEasyValidator> createState() => _FormEasyValidatorState();
}

class _FormEasyValidatorState extends State<FormEasyValidator> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: widget.padding!,
            child: widget.formtext == null
                ? Container()
                : Text(widget.formtext!,
                    style: widget.textStyle ??
                        GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey))),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          readOnly: widget.readonly!,
          textCapitalization: widget.textCapitalization,
          initialValue: widget.initialValue,
          controller: widget.controller,
          obscureText: _obscureText,
          cursorColor: widget.color ?? Colors.black,
          decoration: InputDecoration(
            labelText: widget.labeltext,
            hintStyle: GoogleFonts.inter(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
            hintText: widget.hinttext,
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.showVisibilityToggle
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : Icon(widget.suffixIcon),
          ),
        )
      ],
    );
  }
}
