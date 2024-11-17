import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart';
import 'package:rioding_app/Menu/Controller/TaskController.dart';

import '../Menu/Controller/Layout Controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => NewsController());
    Get.lazyPut(() => TaskController());
    Get.lazyPut(() => Responsifcontroller());
  }
}
