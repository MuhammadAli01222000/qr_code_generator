import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/strings.dart';
class SelectFormat extends StatelessWidget {
  const SelectFormat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 90,
            height: 60,
            child: Card(
              child: Center(
                child: Text(
                  AppStrings.png,
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
              color: AppColors.blue3,
            ),
          ),
          SizedBox(
            width: 90,
            height: 60,
            child: Card(
              child: Center(
                child: Text(
                  AppStrings.jpg,
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
              color: AppColors.blue3,
            ),
          ),
          SizedBox(
            width: 90,
            height: 60,
            child: Card(
              child: Center(
                child: Text(
                  AppStrings.svg,
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
              color: AppColors.blue3,
            ),
          ),
        ],
      ),
    );
  }
}
