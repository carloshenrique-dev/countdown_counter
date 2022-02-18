import 'package:countdown_counter/app/themes/styles/app_colors.dart';
import 'package:countdown_counter/app/themes/styles/app_text_styles.dart';
import 'package:countdown_counter/countdown/widgets/default_button_widget.dart';
import 'package:countdown_counter/countdown/widgets/default_divider_widget.dart';
import 'package:countdown_counter/countdown/widgets/default_text_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './countdown_controller.dart';

class CountdownPage extends GetView<CountdownController> {
  const CountdownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: Center(
          child: AnimatedBuilder(
            animation: controller.animationController,
            builder: (context, child) {
              if (!controller.animationController.isAnimating) {
                return _buildStaticScreen();
              } else {
                return _buildAnimatedScreen();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildStaticScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const DefaultTextWidget(
          title: '30',
          textStyle: AppTextStyles.countdownTextStyle,
        ),
        const DefaultTextWidget(
          title: 'seconds',
          textStyle: AppTextStyles.subtitleTextStyle,
        ),
        SizedBox(
          height: Get.height * 0.04,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ..._buildDivider(value: 5, height: 40, color: AppColors.gray),
              const Padding(
                padding: EdgeInsets.only(bottom: 17),
                child:
                    DefaultDividerWidget(height: 60, color: AppColors.orange),
              ),
              ..._buildDivider(value: 5, height: 40, color: AppColors.gray),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.06,
        ),
        DefaultButtonWidget(
          buttonText: 'START',
          onPressed: () => controller.startCountdown(),
        ),
      ],
    );
  }

  Widget _buildAnimatedScreen() {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, child) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppColors.orange,
                height: controller.animationController.value * Get.height,
                width: Get.width,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Obx(() {
                return DefaultTextWidget(
                  title: '${controller.counterValue.value}',
                  textStyle: AppTextStyles.countdownTextStyle,
                );
              }),
            ),
          ],
        );
      },
    );
  }

  _buildDivider(
      {required int value, required double height, required Color color}) {
    return List.generate(value, (index) {
      return DefaultDividerWidget(height: height, color: color);
    }).toList();
  }
}
