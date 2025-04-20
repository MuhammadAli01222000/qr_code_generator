
import 'package:flutter/material.dart';

import '../theme/icon.dart';
import '../theme/strings.dart';
final List<MenuItem> menuItems = [
  MenuItem(icon: AppIcons.link, title: AppStrings.website),
  MenuItem(icon: AppIcons.upload, title: AppStrings.upload),
  MenuItem(icon: AppIcons.text, title: AppStrings.message),
  MenuItem(icon: AppIcons.image, title: AppStrings.image),
  MenuItem(icon: AppIcons.google, title: AppStrings.google),
  MenuItem(icon: AppIcons.instagram, title: AppStrings.instagram),
  MenuItem(icon: AppIcons.facebook, title: AppStrings.facebook),
  MenuItem(icon: AppIcons.youTube, title: AppStrings.youTube),
  MenuItem(icon: AppIcons.wifi, title: AppStrings.wifi),
  MenuItem(icon: AppIcons.email, title: AppStrings.email),
];

class MenuItem {
  final Widget icon;
  final String title;
  MenuItem({required this.icon, required this.title});
}
