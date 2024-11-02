import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BinBinding/Bindings.dart';
import 'Menu/Dashboard_page.dart';
import 'Menu/Pages/LogInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Loginpage(),
        ),
        GetPage(
          name: '/Dashboard',
          page: () => DashboardPage(),
          binding: MyBindings(), // Ensure your bindings are set up correctly
        ),
      ],
    );
  }
}
