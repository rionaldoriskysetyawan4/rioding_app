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
      color: Colors.transparent,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: [
          Image.asset(
            Imagemu,
            width: 100,
          ),
          SizedBox(width: 10), // Spasi antara gambar dan teks
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
              children: [
                Text(
                  Text1,
                  style: TextStyle(fontWeight: FontWeight.bold), // Tambahkan style jika diperlukan
                ),
                Text(
                  Text2,
                  softWrap: true,
                  maxLines: null, // Membuat teks bisa meluas ke bawah sesuai kebutuhan
                  overflow: TextOverflow.visible, // Membuat teks tidak terpotong
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
