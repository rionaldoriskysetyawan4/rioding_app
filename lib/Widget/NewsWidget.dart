import 'package:flutter/material.dart';

class Newswidget extends StatelessWidget {
  final String Text1;
  final String Text2;
  final String Imagemu;

  const Newswidget(
      {super.key,
      required this.Imagemu,
      required this.Text1,
      required this.Text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.5),
          ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(10), // Apply the same border radius
            child: Image.asset(
              Imagemu,
              width: 100,
              height: 100,
              fit: BoxFit.cover, // Adjust the fit if necessary
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Aligns text to the left
              children: [
                Text(Text1),
                Text(Text2),
              ],
            )),
      ]),
    );
  }
}
