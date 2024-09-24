import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Data/Dataview.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';

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
        body:

        Center(
          child: Container(
            width: MediaQuery.of(context).size.width, // Lebar penuh
            height: MediaQuery.of(context).size.height, // Tinggi penuh
            color: Color(0xFF8E8E8E),
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [

                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Image.asset(
                        'images/RIODING.png',
                        height: 300,
                        width: 350,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      height: 300, // Set a specific height to enable scrolling
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: ListView.builder(
                        itemCount: listController.items.length,
                        itemBuilder: (context, index) {
                          final item = listController.items[index];
                          return ListTile(
                            leading: Image.asset(item.imageku),
                            title: Text(item.title),
                            subtitle: Text(item.description),
                          );
                        },
                      ),
                    )


                  ],
                ),
              ],

            )

          ),
        ),
    );
  }
}
