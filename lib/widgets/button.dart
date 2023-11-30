import 'package:birds_nest/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:birds_nest/constants/app_colors.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Button(
      this.text,
      this.onPressed, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: RegularText(
        text,
        color: Colors.black,
        weight: FontWeight.w900,
      ),
    );
  }
}
