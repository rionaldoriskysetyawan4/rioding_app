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
            Image.asset(image),
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
