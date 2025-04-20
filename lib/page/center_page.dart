import 'package:flutter/material.dart';

import '../core/theme/strings.dart';
import '../core/widgets/text_style.dart';


class CenterPage extends StatelessWidget {
  const CenterPage({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        SizedBox(
          width: screenWidth / 3-100,
          height: 70,
          child: Center(
            child: Text(AppStrings.enter, style: AppTextStyle.bold),
          ),
        ),
        Text(AppStrings.your, style: AppTextStyle.centerText),
        const Spacer(),
      ],
    );
  }
}
