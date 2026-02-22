import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';

class MainBotton extends StatelessWidget {
  const MainBotton({
    super.key,
    required this.text,
    this.bgcolor = AppColors.primarycolor,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 55,
    this.textStyle,
  });
  final String text;
  final Color bgcolor;
  final Function() onPressed;
  final double width;
  final double height;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(width, height),
      ),

      onPressed: onPressed,
      child: Text(
        text,
        style:
            textStyle ??
            TextStyles.Subtitle.copyWith(color: AppColors.whitecolor),
      ),
    );
  }
}
