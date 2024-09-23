import 'package:flutter/material.dart';
class Inpowidget extends StatelessWidget {
  const Inpowidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:
      Row(
        children:[
          Image.asset(
            'images/RIODING.png',
            height: 20,
            width: 20,
          ),
          Container(
            child: Column(
              children: <Widget>[Text("Halo"),
                Text("Halo")],
            ),
          ),
        ]

      ),
    );
  }
}
