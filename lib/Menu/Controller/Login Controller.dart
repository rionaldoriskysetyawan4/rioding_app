import 'package:get/get.dart';

class LoginController extends GetxController {
  // Variable untuk menyimpan email dan password
  var email = ''.obs;
  var password = ''.obs;

  // Untuk menyimpan status validasi form
  var isLoading = false.obs;

  // Fungsi untuk login
  void login() {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar('Error', 'Email dan password tidak boleh kosong');
      return;
    }

    // Set loading ke true
    isLoading.value = true;

    // Simulasi proses login
    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      if (email.value == '1' && password.value == '1') {
        Get.snackbar('Success', 'Login berhasil');
        Get.offNamed('/Dashboard'); // Navigasi ke halaman Home jika login berhasil
      } else {
        Get.snackbar('Error', 'Email atau password salah');
      }
    });
  }
}
