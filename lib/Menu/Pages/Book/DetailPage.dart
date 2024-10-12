import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String? valuemu;

  DetailPage({
    required this.image,
    required this.title,
    required this.description,
    this.valuemu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            AspectRatio(
              aspectRatio: 1, // Ensure the aspect ratio is 1:1
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(description),
            if (valuemu != null && valuemu!.isNotEmpty) ...[
              SizedBox(height: 16),
              Text(
                valuemu!,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
