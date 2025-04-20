import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';

import '../theme/colors.dart';
sealed class AppTextStyle{
  static const bold=TextStyle(fontWeight: FontWeight.bold,fontSize: AppDimens.d25);
  static final watch=TextStyle(color: AppColors.blue3,fontSize: 15);
  static final centerText=TextStyle(fontSize: AppDimens.d15,color: AppColors.grey);
  static final leftText=TextStyle(fontSize: AppDimens.d15,color: AppColors.black);
  static final inputStyle=TextStyle(fontSize: AppDimens.d15,color: AppColors.white);
}