// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/fonts.dart';

class CustomTextFormFieldPassword extends StatefulWidget {
  const CustomTextFormFieldPassword({
    super.key,
    this.text,
    this.Text_Styles,
    this.fill_color,
    this.suffix_Icon,
    this.validator,
  });
  final String? text;
  final Color? Text_Styles;
  final Color? fill_color;
  final Widget? suffix_Icon;
  final String? Function(String?)? validator;
  @override
  State<CustomTextFormFieldPassword> createState() =>
      _CustomTextFormFieldPasswordState();
}

class _CustomTextFormFieldPasswordState
    extends State<CustomTextFormFieldPassword> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: TextStyles.Caption.copyWith(color: widget.Text_Styles),
        hintText: widget.text,
        fillColor: widget.fill_color,
        filled: true,
        suffixIcon:
            widget.suffix_Icon ??
            IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: obscureText
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.remove_red_eye),
              color: widget.Text_Styles,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
      validator: widget.validator,
    );
  }
}
