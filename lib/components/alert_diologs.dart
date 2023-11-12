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

  loading() {
    Get.defaultDialog(
        title: "Loading",
        content: const Center(
          child: CircularProgressIndicator(),
        ));
  }

  Future<bool> confirmAlert(String message) async {
    bool confirm = false;
    await Get.defaultDialog(title: 'Note', middleText: message, actions: [
      ElevatedButton(
          onPressed: () async {
            confirm = true;
            Get.back();
          },
          child: const Text('Confirm')),
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'))
    ]);
    return confirm;
  }
}
