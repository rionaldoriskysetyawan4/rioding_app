import 'dart:async';
import 'package:get/get.dart';

class ImageController extends GetxController {
  var currentIndex = 0.obs; // Observable to track the current image index
  late Timer timer;

  // List of image paths
  final List<String> imagePaths = [
    'images/Bumi.png',
    'images/Bulan.png',
    'images/RIODING.png',
    'images/SekolahRusia.png'
  ];

  @override
  void onInit() {
    super.onInit();
    // Start the timer when the controller is initialized
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      currentIndex.value = (currentIndex.value + 1) % imagePaths.length;
    });
  }

  @override
  void onClose() {
    timer.cancel(); // Cancel the timer when the controller is disposed
    super.onClose();
  }
}
