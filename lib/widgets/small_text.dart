import 'package:birds_nest/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final bool capitalized;

  const SmallText(
      this.text, {
        super.key,
        this.size = 30,
        this.color = AppColors.accentColor,
        this.capitalized = true
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      capitalized ? text.toUpperCase() : text,
      style: TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.w300,
        fontSize: size,
        color: color,
      ),
    );
  }
}
