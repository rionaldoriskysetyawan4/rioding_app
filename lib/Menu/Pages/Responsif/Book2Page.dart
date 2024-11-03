import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Data/Dataview.dart';
import '../../../Model/TaskModel.dart';
import '../../../Widget/InpoWidget.dart';
import '../../Controller/TaskController.dart';
import '../Book/DetailPage.dart';

class Book2page extends StatelessWidget {
  const Book2page({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController book2Controller = Get.find();
    final TaskController task2Controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Book"),
        backgroundColor: const Color(0xFF8E8E8E),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF8E8E8E),
          ),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              _buildHorizontalListView(book2Controller),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0), // Optional padding for spacing
                      child: _buildVerticalListView(book2Controller, task2Controller),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0), // Optional padding for spacing
                      child: _buildVerticalListView(book2Controller, task2Controller),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
Widget _buildHorizontalListView(NewsController bookController) {
  return Obx(() => SizedBox(
    height: 200,
    child: ListView.builder(
      itemCount: bookController.itemsmu.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = bookController.itemsmu[index];
        return GestureDetector(
          onTap: () {
            Get.to(() => DetailPage(
              image: item.imageku,
              title: item.title,
              description: item.description,
              valuemu: item.valuemu,
            ));
          },
          child: Container(
            width: 200,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      item.imageku ?? 'assets/placeholder.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    height: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.title ?? "Untitled",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  ));
}

Widget _buildVerticalListView(NewsController bookController, TaskController taskController) {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: bookController.itemsmu.length,
      itemBuilder: (context, index) {
        final item = bookController.itemsmu[index];
        return GestureDetector(
          onTap: () {
            Get.to(() => DetailPage(
              image: item.imageku,
              title: item.title,
              description: item.description,
              valuemu: item.valuemu,
            ));
          },
          child: Inpowidget(
            imagemu: item.imageku ?? 'assets/placeholder.png',
            text1: item.title ?? "Untitled",
            text2: item.description ?? "No description available.",
            icon: Icon(Icons.add),
            onAddTask: () {
              _addTask(taskController, item);
            },
          ),
        );
      },
    ),
  );
}
void _addTask(TaskController taskController, dynamic item) {
  TaskModel task = TaskModel(
    title: item.title ?? "Untitled",
    description: item.description ?? "No description available.",
    valuemu: item.valuemu,
    imagemu: item.imageku ?? "No image",
  );
  taskController.addTask(task);
  Get.snackbar(
    "Task Added",
    "${item.title ?? "Untitled"} has been added to your tasks.",
    snackPosition: SnackPosition.TOP,
  );
}
