import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDiologeWidgets extends GetxController {
  warningAlert(String message) {
    Get.defaultDialog(title: "Note", middleText: message, actions: [
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('OK'))
    ]);
  }
}
