import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';

class Bookpage extends StatelessWidget {
  const Bookpage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController bookController = Get.find(); // Adjusted variable name for clarity

    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: SafeArea( // Wrap with SafeArea
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF8E8E8E),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.9, // Responsive width
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), // Added border radius for rounded corners
              ),
              child: ListView.builder(
                itemCount: bookController.itemsmu.length,
                itemBuilder: (context, index) {
                  final item = bookController.itemsmu[index];
                  return ListTile(
                    leading: Image.asset(item.imageku),
                    title: Text(item.title),
                    subtitle: Text(item.description),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
