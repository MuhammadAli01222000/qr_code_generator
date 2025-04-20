import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';
import 'package:qr_code_generator/core/theme/path.dart';

import 'colors.dart';
sealed class AppIcons{
  static const  link=Icon(Icons.add_link_outlined);
  static const upload=Icon(Icons.file_upload_outlined);
  static const text=Icon(Icons.message_outlined);
  static const image=Icon(Icons.image_outlined);
  static const wifi=Icon(Icons.wifi);
  static const email=Icon(Icons.email_outlined);
  static const play=Icon(Icons.play_circle_outline_rounded,color: AppColors.blue3,);
  static final down=Icon(Icons.keyboard_arrow_down,color: AppColors.blue3,);
  static const up=Icon(Icons.keyboard_arrow_up);
  /// svg
  static SvgPicture google = SvgPicture.asset(AppPath.google);
  static SvgPicture instagram = SvgPicture.asset(AppPath.instagram,width: AppDimens.d35,height: AppDimens.d35,);

  static SvgPicture facebook = SvgPicture.asset(AppPath.facebook,width: AppDimens.d35,height: AppDimens.d35,);
  static SvgPicture youTube = SvgPicture.asset(AppPath.youTube,width: AppDimens.d35,height: AppDimens.d35,);

}