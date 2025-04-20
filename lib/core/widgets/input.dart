import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/strings.dart';

import '../theme/colors.dart';
import 'text_style.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.inputStyle,

      controller: _controller,
      decoration: InputDecoration(
        labelText: AppStrings.address,
        labelStyle: AppTextStyle.inputStyle,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
