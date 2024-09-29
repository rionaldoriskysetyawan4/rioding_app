import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Menu/Pages/Book/NewsPage.dart';
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
