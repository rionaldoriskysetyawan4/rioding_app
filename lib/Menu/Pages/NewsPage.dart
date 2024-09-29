import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Menu/Pages/Book/NewsPage.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';
import 'package:rioding_app/Widget/NewsWidget.dart';

class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController listController = Get.find();

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
                    IntrinsicHeight(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Obx(() {
                                  // Get the current item from the listController based on the currentIndex
                                  final item = listController
                                      .items[listController.currentIndex.value];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                            image: item.imageku,
                                            title: item.title,
                                            description: item.description,
                                            valuemu: item.valuemu,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      item.imageku, // Use the image from the current item
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the entire area
                                    ),
                                  );
                                }),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              height: 80,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                ),
                                padding: EdgeInsets.all(8.0),
                                child: Obx(() {
                                  // Get the current item title from the listController
                                  final item = listController
                                      .items[listController.currentIndex.value];
                                  return Text(
                                    item.title, // Display the title from the current item
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    // First ListView.builder for displaying news items with AspectRatio
                    Container(
                      height: 200, // Fixed height for the news item container
                      child: ListView.builder(
                        itemCount: listController.items.length,
                        scrollDirection:
                            Axis.horizontal, // Horizontal scrolling
                        itemBuilder: (context, index) {
                          final item = listController.items[index];
                          return Container(
                            width: 200, // Fixed width for each item
                            margin: EdgeInsets.only(
                                right: 10), // Space between items
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1, // Maintain aspect ratio
                                    child: Image.asset(
                                      item.imageku, // Use image path from the listController
                                      fit: BoxFit
                                          .cover, // Ensure the image covers the area
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    height:
                                        60, // Adjust the height for the text container
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        item.title, // Display the title
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    // Other containers and ListViews can go here as needed
                    Container(
                      child: Text("Berita Terbaru"),
                    ),
                    SizedBox(height: 20),

                    // Another ListView for the news items
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
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
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
                                      valuemu: item.valuemu,
                                    ),
                                  ),
                                );
                              },
                              child: Newswidget(
                                Imagemu: item.imageku,
                                Text1: item.title,
                                Text2: item.description,
                              ),

                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ListView.builder(
                          shrinkWrap: true, // Fit content size
                          physics:
                              NeverScrollableScrollPhysics(), // Disable scrolling here
                          itemCount: listController.items.length,
                          itemBuilder: (context, index) {
                            final item = listController.items[index];
                            return Newswidget(
                              Imagemu: item.imageku,
                              Text1: item.title,
                              Text2: item.description,
                            );
                          },
                        ),
                      ),
                    ),

                    // Additional content can go here
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
