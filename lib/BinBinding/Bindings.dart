import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart'; // Sesuaikan dengan path yang benar

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
