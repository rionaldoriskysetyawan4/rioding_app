import 'package:get/get.dart';
class Responsifcontroller extends GetxController {
  var screenWidth = 0.0.obs;

  void updateScreenWidth(double width) {
    screenWidth.value = width;
  }

  bool isMobile() => screenWidth.value < 600;
  bool isTablet() => screenWidth.value >= 600 && screenWidth.value < 1200;
  bool isDesktop() => screenWidth.value >= 1200;
}
