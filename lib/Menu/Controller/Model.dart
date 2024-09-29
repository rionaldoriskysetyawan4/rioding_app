// models/item_model.dart
import 'dart:ui';

class NewsMuModel {
  final String imageku;
  final String title;
  final String description;
  final String? valuemu;

  NewsMuModel({required this.imageku, required this.title, required this.description, this.valuemu});
}


class BookMuModel {
  final String imageku;
  final String title;
  final String description;
  final String? valuemu;

  BookMuModel({
    required this.imageku,
    required this.title,
    required this.description,
    this.valuemu,
  });
}

