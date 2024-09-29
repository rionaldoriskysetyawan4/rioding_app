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
      NewsMuModel(title: 'Item 1', description: 'This is the description for item 1', imageku: 'images/RIODING.png', valuemu: 'Bumi Bagus Wiraguna atau biasa yang dipanggil bum, mi, bumi, bagus, gus, wir wiraguna, raguna, gun atau jawir', ),
      NewsMuModel(title: 'Item 2', description: 'This is the description for item 2', imageku: 'images/RIODING.png', valuemu: 'Bumi Bagus Wiraguna atau biasa yang dipanggil bum, mi, bumi, bagus, gus, wir wiraguna, raguna, gun atau jawir',),
      NewsMuModel(title: 'Item 3', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 4', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 5', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 6', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
    ]);
  }

  void loadBookItems() {
    itemsmu.addAll([
      BookMuModel(title: 'Bumi', description: 'This is the description for item 1', imageku: 'images/Bumi.png', valuemu: 'Bumi Bagus Wiraguna atau biasa yang dipanggil bum, mi, bumi, bagus, gus, wir wiraguna, raguna, gun atau jawir',),
      BookMuModel(title: 'Bulan', description: 'This is the description for item 2', imageku: 'images/Bulan.png', valuemu: 'Thisssidjsdfsfsfsdgdrhfjfjfjfjfjfjfjfjfhfdhfdhdfhfdhdfhfdhfhdfhdfhdfvnffh',),
      BookMuModel(title: 'Matahari', description: 'This is the description for item 3', imageku: 'images/Matahari.png', valuemu: 'Thisssidjsdfsfsfsdgdrhfjfjfjfjfjfjfjfjfhfdhfdhdfhfdhdfhfdhfhdfhdfhdfvnffh',),
      BookMuModel(title: 'Komet', description: 'This is the description for item 3', imageku: 'images/Komet.png', valuemu: 'Thisssidjsdfsfsfsdgdrhfjfjfjfjfjfjfjfjfhfdhfdhdfhfdhdfhfdhfhdfhdfhdfvnffh',),
      BookMuModel(title: 'Atomic Habit', description: 'This is the description for item 3', imageku: 'images/Atomic Habits.png', valuemu: 'Thisssidjsdfsfsfsdgdrhfjfjfjfjfjfjfjfjfhfdhfdhdfhfdhdfhfdhfhdfhdfhdfvnffh',),
    ]);
  }
}
