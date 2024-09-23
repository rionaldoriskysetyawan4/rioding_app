import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final String Text;
  final double Radius;
  final Color? colormu;
  final double Width;
  final double Height;
  final bool? isObsecured;

  const MyTextField({super.key, required this.Text, required this.Radius, this.colormu, required this.Width, required this.Height, this.isObsecured,});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: Width,
        height: Height,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(Radius),
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child:
          TextField(
            obscureText: isObsecured ?? false,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: Text,

            ),
            style: TextStyle(
              color: colormu ?? Colors.black,
            ),
          ),
        ), 
      );
  }
}
