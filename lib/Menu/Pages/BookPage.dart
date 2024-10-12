import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Menu/Pages/Book/DetailPage.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';

class Bookpage extends StatelessWidget {
  const Bookpage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController bookController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF8E8E8E),
          ),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            children: [
              // Your other widgets can go here if necessary
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 200,// Fixed height for the news item container
                child: ListView.builder(
                  itemCount: bookController.itemsmu.length,
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  itemBuilder: (context, index) {
                    final item = bookController.itemsmu[index];
                    return Container(
                      width: 200, // Fixed width for each item
                      margin: EdgeInsets.only(right: 10), // Space between items
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
                                fit: BoxFit.cover, // Ensure the image covers the area
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              height: 60, // Adjust the height for the text container
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

              SizedBox(height:20,),

              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                // ListView.builder inside another ListView
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(), // Disable independent scrolling
                  shrinkWrap: true, // Make it fit within the parent ListView
                  itemCount: bookController.itemsmu.length,
                  itemBuilder: (context, index) {
                    final item = bookController.itemsmu[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              image: item.imageku,
                              title: item.title,
                              description: item.description,
                              valuemu: item.valuemu, // Mengirimkan valuemu ke DetailPage
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


              ),
            ],
          ),
        ),
      ),
    );
  }
}
