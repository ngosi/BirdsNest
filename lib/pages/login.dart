import 'package:birds_nest/constants/app_colors.dart';
import 'package:birds_nest/widgets/big_text.dart';
import 'package:birds_nest/widgets/regular_text.dart';
import 'package:birds_nest/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigText("welcome to\nbird's nest"),
            const SmallText('what is the code?'),
            const RegularText('email'),
            const Field(),
            const RegularText('access code'),
            const Field(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Button("Enter the Bird's Nest", () {}),
            ),
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.center,
              child: RegularText(
                'forgot your access code?',
                weight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    );
  }
}
