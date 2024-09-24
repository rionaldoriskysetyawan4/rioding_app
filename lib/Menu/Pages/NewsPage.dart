import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Data/DataController.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';

class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController listController = Get.find();
    final ImageController imageController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width, // Full width
            height: MediaQuery.of(context).size.height, // Full height
            color: Color(0xFF8E8E8E),
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: [
                Column(
                  children: <Widget>[
                    // First container with the image
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue, // Background color for the container
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Apply the same border radius to the image
                        child: Obx((){
                          return Image.asset(
                            imageController.imagePaths[imageController.currentIndex.value],
                          );
                        })
                      ),
                    ),

                    SizedBox(height: 20),

                    // First ListView.builder within a container
                    Container(
                      height: 300, // Fixed height for the scrollable ListView
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ListView.builder(
                          itemCount: listController.items.length,
                          shrinkWrap: true, // Make it fit inside the container
                          physics: ClampingScrollPhysics(), // Enable independent scrolling
                          itemBuilder: (context, index) {
                            final item = listController.items[index];
                            return Inpowidget(
                              Imagemu: item.imageku,
                              Text1: item.title,
                              Text2: item.description,
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Second ListView.builder without scrolling
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ListView.builder(
                          shrinkWrap: true, // Fit content size
                          physics: NeverScrollableScrollPhysics(), // Disable scrolling here
                          itemCount: listController.items.length,
                          itemBuilder: (context, index) {
                            final item = listController.items[index];
                            return Inpowidget(
                              Imagemu: item.imageku,
                              Text1: item.title,
                              Text2: item.description,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
