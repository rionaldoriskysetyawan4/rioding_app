import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Data/DataController.dart';
import 'package:rioding_app/Menu/Pages/Book/NewsPage.dart';
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
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Obx(() {
                              final imagePath = imageController.imagePaths[imageController.currentIndex.value];
                              return Image.asset(
                                imagePath,
                                fit: BoxFit.contain,
                              );
                            }),
                          ),
                        )
                      ),
                    ),






                    SizedBox(height: 20),

                    Container(
                      child: Text(
                        "Berita Terbaru"
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: ListView.builder(
                          itemCount: listController.items.length,
                          shrinkWrap: true, // Make it fit inside the container
                          physics: const ClampingScrollPhysics(), // Enable independent scrolling
                          itemBuilder: (context, index) {
                            final item = listController.items[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      image: item.imageku,
                                      title: item.title,
                                      description: item.description,
                                      valuemu: item.valuemu, // Passing valuemu to DetailPage
                                    ),
                                  ),
                                );
                              },
                              child: Inpowidget(
                                Imagemu: item.imageku,
                                Text1: item.title,
                                Text2: item.description,
                              ),
                            );
                          },
                        )

                      )
                    ),

                    SizedBox(height: 20),
                    Container(
                      child: Text(
                          "Berita"
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
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: ListView.builder(
                          shrinkWrap: true, // Fit content size
                          physics: NeverScrollableScrollPhysics(), // Disable scrolling here
                          itemCount: listController.items.length,
                          itemBuilder: (context, index) {
                            final item = listController.items[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                      image: item.imageku,
                                      title: item.title,
                                      description: item.description,
                                      valuemu: item.valuemu, // Passing valuemu to DetailPage
                                    ),
                                  ),
                                );
                              },
                              child: Inpowidget(
                                Imagemu: item.imageku,
                                Text1: item.title,
                                Text2: item.description,
                              ),
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
