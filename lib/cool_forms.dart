import 'package:flutter/material.dart';
import 'package:form_easy_validator/validation.dart';
import 'package:google_fonts/google_fonts.dart';

class FormEasyValidator extends StatefulWidget {
  final EdgeInsets? padding;
  final String? formtext;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;
  final TextInputType? keyboardType;
  final dynamic hinttext;
  final IconData? icon;
  final bool showVisibilityToggle; // Option to show/hide visibility toggle
  final IconData? suffixIcon; // Custom suffix icon
  final bool? readonly;
  final TextCapitalization? textCapitalization;
  final String? initialValue;
  final TextEditingController? controller;
  //final BuildContext? context;
  final Locale? appLoacle;
  final String? labeltext;
  final Color? cursorcolor;
  final void Function(String?)? onChanged;
  final AutovalidateMode? autoVerify;
  final String? Function(String?)? customValidator;
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
      this.textCapitalization,
      this.initialValue,
      this.controller,
      this.appLoacle,
      this.onChanged,
      this.autoVerify,
      this.customValidator,
      // this.context,
      this.cursorcolor,
      this.labeltext});

  // }

  @override
  State<FormEasyValidator> createState() => _FormEasyValidatorState();
}

class _FormEasyValidatorState extends State<FormEasyValidator> {
  @override
  Widget build(BuildContext context) {
    bool obscuretext = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: widget.formtext == null
                ? Container()
                : Text(widget.formtext!,
                    style: widget.textStyle ??
                        GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
        TextFormField(
          autovalidateMode:
              widget.autoVerify ?? AutovalidateMode.onUserInteraction,
          validator: widget.customValidator ?? widget.validator,
          keyboardType: widget.keyboardType,
          readOnly: widget.readonly!,
          textCapitalization: widget.textCapitalization!,
          initialValue: widget.initialValue,
          controller: widget.controller,
          obscureText: obscuretext,
          cursorColor: Theme.of(context).primaryColor ?? widget.cursorcolor,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            labelText: widget.labeltext,
            hintStyle: GoogleFonts.inter(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
            hintText: widget.hinttext,
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.showVisibilityToggle
                ? IconButton(
                    icon: Icon(
                      obscuretext ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        obscuretext = !obscuretext;
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
