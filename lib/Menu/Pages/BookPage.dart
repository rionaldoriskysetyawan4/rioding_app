import 'package:flutter/material.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';
class Bookpage extends StatelessWidget {
  const Bookpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: Center(
        child:
        Container(
          width: MediaQuery.of(context).size.width, // Lebar penuh
          height: MediaQuery.of(context).size.height, // Tinggi penuh
          color: Color(0xFF8E8E8E),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Inpowidget(Imagemu: 'images/RIODING.png', Text1: 'Ini apa', Text2: 'apa ini',),
            ],
          ),
        ),
      )
    );
  }
}
