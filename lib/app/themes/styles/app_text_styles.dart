import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle defaultTextStyle = TextStyle(
    color: AppColors.white,
    fontSize: 25,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle countdownTextStyle = TextStyle(
    color: AppColors.white,
    fontSize: 65,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle subtitleTextStyle = TextStyle(
    color: AppColors.gray,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
