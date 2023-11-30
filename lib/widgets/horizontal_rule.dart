import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'custom_dotted_border.dart';

class HorizontalRule extends StatelessWidget {
  final List<double> dashPattern;
  final double strokeWidth;
  final Color color;

  const HorizontalRule({
    super.key,
    this.dashPattern = const [14, 13],
    this.strokeWidth = 1,
    this.color = AppColors.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDottedBorder(
      customPath: (size) {
        print(size);
        return Path()
          ..moveTo(0, 0)
          ..lineTo(size.width, 0);
      },
      dashPattern: dashPattern,
      strokeWidth: strokeWidth,
      color: color,
      child: Container(),
    );
  }
}
