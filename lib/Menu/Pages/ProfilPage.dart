import 'package:flutter/material.dart';
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8E8E8E),
      ),
      body: Container(
        color: Color(0xFF8E8E8E),
        child: Text("Ini Profil Page"),
      ),
    );
  }
}
