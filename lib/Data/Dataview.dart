// controllers/list_controller.dart
import 'package:get/get.dart';
import '../Menu/Controller/Model.dart';

class NewsController extends GetxController {
  // Observable list of ItemModel
  var items = <NewsMuModel>[].obs;
  var itemsmu = <BookMuModel>[].obs;

  // Initialize with some default items
  @override
  void onInit() {
    super.onInit();
    loadNewsItems();
    loadBookItems();
  }

  // Method to load some initial items
  void loadNewsItems() {
    items.addAll([
      NewsMuModel(title: 'Item 1', description: 'This is the description for item 1', imageku: 'images/RIODING.png',),
      NewsMuModel(title: 'Item 2', description: 'This is the description for item 2', imageku: 'images/RIODING.png',),
      NewsMuModel(title: 'Item 3', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 4', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 5', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
    ]);
  }

  void loadBookItems() {
    itemsmu.addAll([
      BookMuModel(title: 'Item 1', description: 'This is the description for item 1', imageku: 'images/RIODING.png',),
      BookMuModel(title: 'Item 2', description: 'This is the description for item 2', imageku: 'images/RIODING.png',),
      BookMuModel(title: 'Item 3', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 4', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 5', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      BookMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
    ]);
  }
}
