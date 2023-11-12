import 'package:get/get.dart';

class NavigationController extends GetxController {
  final RxString currentScreen = 'initialScreen'.obs;

  void navigateToScreenA() {
    currentScreen.value = 'screenA';
  }

  void navigateToScreenB() {
    currentScreen.value = 'screenB';
  }
}
