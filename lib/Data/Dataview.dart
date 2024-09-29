import 'dart:async';
import 'package:get/get.dart';
import '../Menu/Controller/Model.dart';

class NewsController extends GetxController {
  // Observable list of ItemModel
  var currentIndex = 0.obs;
  late Timer timer;
  var items = <NewsMuModel>[].obs;
  var itemsmu = <BookMuModel>[].obs;

  // Initialize with some default items
  @override
  void onInit() {
    super.onInit();
    loadNewsItems();
    loadBookItems();
    startImageSlider(); // Start the image slider
  }

  // Method to load some initial news items
  void loadNewsItems() {
    items.addAll([
      NewsMuModel(title: 'Perang Rusia Ukraina', description: 'This is the description for item 1', imageku: 'images/SekolahRusia.png', valuemu: 'Bumi Bagus Wiraguna atau biasa yang dipanggil bum, mi, bumi, bagus, gus, wir wiraguna, raguna, gun atau jawir'),
      NewsMuModel(title: 'Item 2', description: 'This is the description for item 2', imageku: 'images/RIODING.png', valuemu: 'Bumi Bagus Wiraguna atau biasa yang dipanggil bum, mi, bumi, bagus, gus, wir wiraguna, raguna, gun atau jawir'),
      NewsMuModel(title: 'Item 3', description: 'This is the description for item 3', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 4', description: 'This is the description for item 4', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 5', description: 'This is the description for item 5', imageku: 'images/RIODING.png'),
      NewsMuModel(title: 'Item 6', description: 'This is the description for item 6', imageku: 'images/RIODING.png'),
    ]);
  }

  void loadBookItems() {
    itemsmu.addAll([
      BookMuModel(title: 'Bumi', description: 'This is the description for item 1', imageku: 'images/Bumi.png', valuemu: 'Bumi Bagus Wiraguna atau biasa yang dipanggil bum, mi, bumi, bagus, gus, wir wiraguna, raguna, gun atau jawir'),
      BookMuModel(title: 'Bulan', description: 'This is the description for item 2', imageku: 'images/Bulan.png', valuemu: 'This is the description for item 2'),
      BookMuModel(title: 'Matahari', description: 'This is the description for item 3', imageku: 'images/Matahari.png', valuemu: 'This is the description for item 3'),
      BookMuModel(title: 'Komet', description: 'This is the description for item 4', imageku: 'images/Komet.png', valuemu: 'This is the description for item 4'),
      BookMuModel(title: 'Atomic Habit', description: 'This is the description for item 5', imageku: 'images/Atomic Habits.png', valuemu: 'This is the description for item 5'),
    ]);
  }

  // Start the timer to cycle through news items
  void startImageSlider() {
    timer = Timer.periodic(Duration(seconds: 10), (timer) {
      if (items.isNotEmpty) { // Ensure there are items to display
        currentIndex.value = (currentIndex.value + 1) % items.length; // Cycle through news items
      }
    });
  }

  @override
  void onClose() {
    timer.cancel(); // Cancel the timer when the controller is disposed
    super.onClose();
  }
}
