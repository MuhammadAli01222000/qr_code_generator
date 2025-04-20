import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';
import 'package:qr_code_generator/core/theme/path.dart';
import 'colors.dart';
/// icon pattern
final List<Widget> listIcon = [
  Padding(
    padding: EdgeInsets.all(6.0),
    child: IconButton.filledTonal(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.blue3),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.d12),
          ),
        ),
      ),
      onPressed: () {},
      icon: AppIcons.icon1,
    ),
  ),
  Padding(
    padding: EdgeInsets.all(6.0),

    child: IconButton.filledTonal(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.blue3),

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.d12),
          ),
        ),
      ),
      onPressed: () {},
      icon: AppIcons.icon2,
    ),
  ),
  Padding(
    padding: EdgeInsets.all(6.0),
    child: IconButton.filledTonal(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.blue3),

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.d12),
          ),
        ),
      ),
      onPressed: () {},
      icon: AppIcons.icon3,
    ),
  ),
  Padding(
    padding: EdgeInsets.all(6.0),
    child: IconButton.filledTonal(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.blue3),

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.d12),
          ),
        ),
      ),
      onPressed: () {},
      icon: AppIcons.icon4,
    ),
  ),
];
///icon color
final List<Widget> listColor = [
  OutlinedButton(
    style: ButtonStyle(shape: WidgetStatePropertyAll(CircleBorder())),
    onPressed: () {},
    child: SizedBox(
      width: AppDimens.d50,
      height: AppDimens.d50,
      child: Card(color: AppColors.redAccent, shape: CircleBorder()),
    ),
  ),
  OutlinedButton(
    style: ButtonStyle(shape: WidgetStatePropertyAll(CircleBorder())),

    onPressed: () {},
    child: SizedBox(
      width: AppDimens.d50,
      height: AppDimens.d50,
      child: Card(color: AppColors.greenAccent, shape: CircleBorder()),
    ),
  ),
  OutlinedButton(
    style: ButtonStyle(shape: WidgetStatePropertyAll(CircleBorder())),

    onPressed: () {},
    child: SizedBox(
      width: AppDimens.d50,
      height: AppDimens.d50,
      child: Card(color: AppColors.pink, shape: CircleBorder()),
    ),
  ),
  OutlinedButton(
    style: ButtonStyle(shape: WidgetStatePropertyAll(CircleBorder())),

    onPressed: () {},
    child: SizedBox(
      width: AppDimens.d50,
      height: AppDimens.d50,
      child: Card(color: AppColors.yellowAccent, shape: CircleBorder()),
    ),
  ),
];

sealed class AppIcons {
  static const link = Icon(Icons.add_link_outlined);
  static const upload = Icon(Icons.file_upload_outlined);
  static const text = Icon(Icons.message_outlined);
  static const image = Icon(Icons.image_outlined);
  static const wifi = Icon(Icons.wifi);
  static const email = Icon(Icons.email_outlined);
  static const play = Icon(
    Icons.play_circle_outline_rounded,
    color: AppColors.blue3,
  );
  static final down = Icon(Icons.keyboard_arrow_down, color: AppColors.white);
  static const up = Icon(Icons.keyboard_arrow_up);

  /// svg
  static SvgPicture google = SvgPicture.asset(AppPath.google,);
  static SvgPicture instagram = SvgPicture.asset(
    AppPath.instagram,
    width: AppDimens.d35,
    height: AppDimens.d35,
  );

  static SvgPicture facebook = SvgPicture.asset(
    AppPath.facebook,
    width: AppDimens.d35,
    height: AppDimens.d35,
  );
  static SvgPicture youTube = SvgPicture.asset(
    AppPath.youTube,
    width: AppDimens.d35,
    height: AppDimens.d35,
  );

  /// svg pattern
  static SvgPicture icon1 = SvgPicture.asset(
    AppPath.pattern1,
    width: AppDimens.d35,
    height: AppDimens.d35,
    color: AppColors.white,
  );
  static SvgPicture icon2 = SvgPicture.asset(
    AppPath.pattern2,
    width: AppDimens.d35,
    height: AppDimens.d35,
    color: AppColors.white,
  );
  static SvgPicture icon3 = SvgPicture.asset(
    AppPath.pattern3,
    width: AppDimens.d35,
    height: AppDimens.d35,
    color: AppColors.white,
  );
  static SvgPicture icon4 = SvgPicture.asset(
    AppPath.pattern4,
    width: AppDimens.d35,
    height: AppDimens.d35,
    color: AppColors.white,
  );
}
