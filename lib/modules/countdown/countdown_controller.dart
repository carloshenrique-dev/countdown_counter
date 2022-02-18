import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class CountdownController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final counterValue = 30.obs;
  late AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );
  }

  void startCountdown() {
    if (animationController.isAnimating) {
      animationController.stop();
    } else {
      animationController.reverse(
        from:
            animationController.value == 0.0 ? 1.0 : animationController.value,
      );
      Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        if (counterValue.value == 0) {
          timer.cancel();
          counterValue.value = 30;
        } else {
          counterValue.value--;
        }
      });
    }
  }
}
