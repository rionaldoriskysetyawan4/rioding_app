import 'package:flutter/material.dart';
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: Center(
        child: 
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF8E8E8E),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100)
                ),
                  child: Image.asset('images/RIODING.png'),
                height: 200,
                width: 200,
                ),
              Container(
                  child: Text("John Doe"),
                ),
              ],
          ),
        ),
      )
    );
  }
}
