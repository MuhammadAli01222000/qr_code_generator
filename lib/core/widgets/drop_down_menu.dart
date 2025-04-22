import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/widgets/text_style.dart';

import '../../provider/app_provider.dart';
import '../theme/colors.dart';
import '../theme/icon.dart';
import '../theme/picture.dart';
import '../theme/strings.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    var res = 'empty';
    AppProvider appProvider = AppProvider(text: 'salom');
    return Container(
      width: screenWidth - 10,
      color: AppColors.blue2,

      child: DropdownMenu(
        inputDecorationTheme: InputDecorationTheme(
          suffixStyle: TextStyle(color: Colors.red),
        ),

        label: Text(AppStrings.logo, style: AppTextStyle.inputStyle),
        trailingIcon: AppIcons.down,
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.backroundColor),
        ),
        dropdownMenuEntries: [
          DropdownMenuEntry(
            style: ButtonStyle(),
            enabled: false,
            value: "",
            label: "",
            labelWidget: Row(
              children: [
                for (var o in listLogo)
                  GestureDetector(
                    child: o,
                    onTap: () {
                      print(res);
                      res = appProvider.updateImage(
                        "assets/logo_png/img_2.png",
                      );
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth - 10,

      color: AppColors.blue2,
      child: DropdownMenu(
        inputDecorationTheme: InputDecorationTheme(
          suffixStyle: TextStyle(color: Colors.red),
        ),

        label: Text(AppStrings.color, style: AppTextStyle.inputStyle),
        trailingIcon: AppIcons.down,
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.backroundColor),
        ),
        dropdownMenuEntries: [
          DropdownMenuEntry(
            enabled: false,
            value: "",
            label: "",
            labelWidget: Row(children: [for (var o in listColor) o]),
          ),
        ],
      ),
    );
  }
}

class Pattern extends StatelessWidget {
  const Pattern({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth - 10,
      color: AppColors.blue2,
      child: DropdownMenu(
        inputDecorationTheme: InputDecorationTheme(
          suffixStyle: TextStyle(color: Colors.red),
        ),
        enableSearch: false,
        label: Text(AppStrings.pattern, style: AppTextStyle.inputStyle),
        trailingIcon: AppIcons.down,
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.backroundColor),
        ),
        dropdownMenuEntries: [
          DropdownMenuEntry(
            enabled: false,
            value: "",
            label: "",
            labelWidget: Row(children: [for (var o in listIcon) o]),
          ),
        ],
      ),
    );
  }
}
