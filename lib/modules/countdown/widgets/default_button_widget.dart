import 'package:countdown_counter/app/themes/styles/app_colors.dart';
import 'package:countdown_counter/app/themes/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class DefaultButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  const DefaultButtonWidget({
    Key? key,
    this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: AppTextStyles.defaultTextStyle,
      ),
      style: TextButton.styleFrom(
        backgroundColor: AppColors.orange,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(60),
      ),
    );
  }
}
