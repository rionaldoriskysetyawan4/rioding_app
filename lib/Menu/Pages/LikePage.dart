import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/TaskController.dart';

class Likepage extends StatelessWidget {
  final TaskController taskController = Get.find();

  @override
  Widget build(BuildContext context) {
    taskController.loadTasks(); // Load tasks when the screen opens
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Obx((){
              return ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index){
                    final task = taskController.tasks[index];
                    return ListTile(
                      title: Text(task.title),
                      subtitle: Text(task.description),
                      trailing: Icon(Icons.delete),
                      onTap: () {
                        taskController.deleteTask(task.id!);
                      },
                    );
                  }
              );
            }

            ),
          ),
        ],
      ),
    );
  }
}
