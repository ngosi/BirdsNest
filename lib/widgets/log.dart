import 'package:birds_nest/constants/app_colors.dart';
import 'package:birds_nest/widgets/big_text.dart';
import 'package:birds_nest/widgets/horizontal_rule.dart';
import 'package:birds_nest/widgets/regular_text.dart';
import 'package:birds_nest/widgets/small_text.dart';
import 'package:flutter/material.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: AppColors.backgroundText,
                      width: 2,
                    ),
                  ),
                  child: const Icon(Icons.image_outlined, size: 50),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText('log title', size: 30),
                      SizedBox(height: 5),
                      SmallText('hunter name', size: 15),
                      SizedBox(height: 8),
                      HorizontalRule(color: Colors.white),
                      SizedBox(height: 5),
                      Flexible(
                        child: RegularText(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          size: 15,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 35,
                    color: AppColors.textColor,
                  ),
                ),
              ]
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: HorizontalRule(),
          ),
        ],
      ),
    );
  }
}
