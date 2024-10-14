import 'package:flutter/material.dart';

class Inpowidget extends StatelessWidget {
  final String imagemu;
  final String text1;
  final String text2;
  final VoidCallback onAddTask;
  final  Icon icon;

  const Inpowidget({
    Key? key,
    required this.imagemu,
    required this.text1,
    required this.text2,
    required this.onAddTask,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            imagemu,
            width: 100,
            errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.error, size: 100),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        text1,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                        onPressed: onAddTask,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent, // Mengatur warna latar belakang menjadi transparan
                          shadowColor: Colors.transparent, // Menghilangkan bayangan
                        ),
                        child: icon, // Menempatkan ikon langsung di dalam ElevatedButton
                      ),
                    ),

                  ],
                ),
                Text(
                  text2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}