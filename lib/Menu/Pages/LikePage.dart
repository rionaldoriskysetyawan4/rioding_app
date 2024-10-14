import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/TaskController.dart';
import 'package:rioding_app/Widget/InpoWidget.dart';

class Likepage extends StatelessWidget {
  final TaskController taskController = Get.find();

  @override
  Widget build(BuildContext context) {
    // Load tasks when the screen opens
    taskController.loadTasks();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Like"),
        backgroundColor: const Color(0xFF8E8E8E),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xFF8E8E8E),
        ),

        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Obx(() {
                return ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index) {
                    final task = taskController.tasks[index];
                    return Container( // New Container for the Inpowidget
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                       // Set the background color to white
                      margin: const EdgeInsets.symmetric(vertical: 5), // Optional: add spacing
                      child: Inpowidget(
                        imagemu: task.imagemu ?? 'assets/placeholder.png',
                        text1: task.title ?? 'No Title',
                        text2: task.description ?? 'No Description',
                        icon: const Icon(Icons.remove), // Change icon if necessary
                        onAddTask: () {
                          taskController.deleteTask(task.id!);
                          Get.snackbar(
                            "Task Deleted",
                            "${task.title ?? 'No Title'} has been removed.",
                            snackPosition: SnackPosition.TOP,
                          );
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
