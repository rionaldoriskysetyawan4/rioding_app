import 'package:flutter/material.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';
class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: Center(
        child:
        Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('images/RIODING.png', height: 300, width: 350,),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),),

              child: Column(
                    children: <Widget>[
                      Inpowidget(Text1: 'Ini Apa', Text2: 'Apa Ini', Imagemu: 'images/RIODING.png',
                    ),
                      Inpowidget(Text1: 'Ini Apa', Text2: 'Apa Ini', Imagemu: 'images/RIODING.png',
                      ),
                    ],
                  ),
                )
          ],
        ),
      ),)

    );
  }
}
