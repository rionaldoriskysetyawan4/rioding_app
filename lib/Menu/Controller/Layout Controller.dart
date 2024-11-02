import 'package:get/get.dart';

class LayoutController extends GetxController {
  RxBool isMobileLayout = true.obs;
  RxBool isTabletLayout = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkScreenWidth();
    ever(isMobileLayout, (_) => checkScreenWidth()); // Listen for changes
  }

  void checkScreenWidth() {
    double screenWidth = Get.width;
    isMobileLayout.value = screenWidth < 640;
    isTabletLayout.value = screenWidth >= 640 && screenWidth < 1024;
  }
}
