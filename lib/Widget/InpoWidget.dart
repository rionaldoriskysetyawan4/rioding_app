import 'package:flutter/material.dart';
class Inpowidget extends StatelessWidget {


  final String Text1;
  final String Text2;
  final String Imagemu;

  const Inpowidget({super.key, required this.Imagemu, required this.Text1, required this.Text2});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 350,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child:
      Row(
        children:[
          Image.asset(
            Imagemu ,
            height: 100,
            width: 100,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(Text1),
                Text(Text2)
              ],
            ),
          ),
        ]

      ),
    );
  }
}
