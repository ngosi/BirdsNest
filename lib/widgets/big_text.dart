import 'package:birds_nest/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final double height;
  final bool capitalized;

  const BigText(
      this.text, {
        super.key,
        this.size = 50,
        this.color = AppColors.textColor,
        this.height = 0.875,
        this.capitalized = true,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      capitalized ? text.toUpperCase() : text,
      style: TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.w900,
        fontSize: size,
        color: color,
        height: height,
      ),
    );
  }
}
