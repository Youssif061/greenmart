import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.text,
    this.Text_Styles,
    this.fill_color,
    this.suffix_Icon,
    this.keyboardType,
    this.validator,
  });

  final String? text;
  final Color? Text_Styles;
  final Color? fill_color;
  final Widget? suffix_Icon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        // prefixIcon: Icon(Icons.email),
        suffixIcon: suffix_Icon,
        fillColor: fill_color,
        filled: true,
        //labelText:  "Enter your email",
        hintStyle: TextStyles.Caption.copyWith(color: Text_Styles),
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
    );
  }
}






 // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(color: AppColors.graykcolor),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide.none,
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide.none,
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide.none,
        // ),