import 'package:birds_nest/constants/app_colors.dart';
import 'package:birds_nest/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../widgets/log.dart';
import '../widgets/small_text.dart';

class HuntersLog extends StatelessWidget {
  const HuntersLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(), // TODO
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 75, left: 75),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText("bird's nest"),
                SmallText('hunters log'),
              ],
            ),
          ),
          SizedBox(height: 40),
          Log(),
          Log(),
          Log(),
        ],
      ),
    );
  }
}
