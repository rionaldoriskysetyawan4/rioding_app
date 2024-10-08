import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/BinBinding/Bindings.dart';
import 'package:rioding_app/Menu/Dashboard_navdrawer.dart';
import 'package:rioding_app/Menu/Dashboard_page.dart';
import 'package:rioding_app/Menu/Pages/LogInPage.dart';
import 'package:rioding_app/Menu/Pages/NewsPage.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => Loginpage(),),
        GetPage(
            name: '/Dashboard',
            page: () => DashboardPage(),
          binding: MyBindings(),
        ),
      ],
    );
  }
}
