import 'package:birds_nest/constants/app_colors.dart';
import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final double height;
  final FontWeight weight;
  final TextOverflow overflow;

  const RegularText(
    this.text, {
      super.key,
      this.size = 10,
      this.color = AppColors.textColor,
      this.height = 3,
      this.weight = FontWeight.normal,
      this.overflow = TextOverflow.clip,
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'Lato',
        color: color,
        height: height,
        fontWeight: weight
      ),
    );
  }
}
