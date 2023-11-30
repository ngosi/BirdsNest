import 'package:birds_nest/constants/app_colors.dart';
import 'package:birds_nest/widgets/big_text.dart';
import 'package:birds_nest/widgets/horizontal_rule.dart';
import 'package:birds_nest/widgets/small_text.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText("visit the\nbird's nest"),
            SmallText('login'),
            // Divider
            Padding(
              padding: EdgeInsets.symmetric(vertical: 150),
              child: HorizontalRule(),
            ),
            BigText('start a\nhunt'),
            SmallText('signup')
          ],
        ),
      ),
    );
  }
}
