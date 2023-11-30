import 'package:birds_nest/constants/app_colors.dart';
import 'package:birds_nest/widgets/custom_dotted_border.dart';
import 'package:flutter/material.dart';

final OutlineInputBorder _border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: const BorderSide(
    style: BorderStyle.none,
  ),
);

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDottedBorder(
      radius: const Radius.circular(15),
      dashPattern: const [14, 14],
      color: Colors.white,
      child: TextField(
        cursorColor: AppColors.textColor,
        style: const TextStyle(
          fontFamily: 'Lato',
          color: AppColors.textColor,
        ),
        decoration: InputDecoration(
          hintText: 'Enter your email...',
          hintStyle: const TextStyle(
            fontFamily: 'Lato',
            color: AppColors.fieldTextColor,
          ),
          contentPadding: const EdgeInsets.all(20),
          filled: true,
          fillColor: AppColors.fieldColor,
          border: _border,
          focusedBorder: _border,
          enabledBorder: _border,
        ),
      ),
    );
  }
}
