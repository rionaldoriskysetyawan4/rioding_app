import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF8E8E8E),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: Image.asset('images/RIODING.png'),
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "John Doe",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child:
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child:
                      Column(
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Get.offNamed('/');
                            },
                            child: Text("LogOut"))
                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
