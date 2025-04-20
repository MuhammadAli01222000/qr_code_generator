import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';

import '../theme/colors.dart';
import '../theme/strings.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;
  final void Function() onTap;
  const Button({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.onTap,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: color,
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.d12)),
          onPressed: onTap,
          child: Center(child: Text(text, style: TextStyle(color: textColor))),
        ),
      ),
    );
  }
}
class RightButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  const RightButton({super.key, required this.onPressed, required this.width,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Button(
          width: width,
          height: AppDimens.d50,
          text: AppStrings.download,
          color: AppColors.blue4,
          onTap: onPressed,
          textColor: AppColors.white,
        ),
      ),
    );
  }
}
