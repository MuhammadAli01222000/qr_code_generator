import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';
import 'package:qr_code_generator/core/theme/path.dart';

final List<Widget> listLogo = [
  OutlinedButton(onPressed: () {}, child: Picture.google,style: ButtonStyle(shape:WidgetStatePropertyAll(const CircleBorder(side: BorderSide.none)) ),),
  OutlinedButton(onPressed: () {}, child: Picture.instagram,style: ButtonStyle(shape:WidgetStatePropertyAll(const CircleBorder()) ),),
  OutlinedButton(onPressed: () {}, child: Picture.facebook,style: ButtonStyle(shape:WidgetStatePropertyAll(const CircleBorder()) ),),
  OutlinedButton(onPressed: () {}, child: Picture.youTube,style: ButtonStyle(shape:WidgetStatePropertyAll(const CircleBorder()) ),),
];

sealed class Picture {
  static var google = Image.asset(
    AppPath.googlePng,
    width: AppDimens.d50,
    height: AppDimens.d50,
    fit: BoxFit.contain,
  );
  static var instagram = Image.asset(
    AppPath.instagramPng,
    width: AppDimens.d50,
    height: AppDimens.d50,
    fit: BoxFit.contain,
  );
  static var facebook = Image.asset(
    AppPath.facebookPng,
    width: AppDimens.d50,
    height: AppDimens.d50,
    fit: BoxFit.contain,
  );
  static var youTube = Image.asset(
    AppPath.youTubePng,
    width: AppDimens.d50,
    height: AppDimens.d50,
    fit: BoxFit.contain,
  );
}
