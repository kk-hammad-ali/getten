import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonFunction {
  static void showSnack(
    String? title,
    String? message,
  ) {
    Get.snackbar(
      title!,
      message!,
      duration: const Duration(milliseconds: 700),
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    );
  }
}
