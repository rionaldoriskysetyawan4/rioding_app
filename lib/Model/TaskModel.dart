class TaskModel {
  int? id;
  String title;
  String description;
  String? valuemu; // Make valuemu nullable
  bool isCompleted;

  TaskModel({
    this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
    this.valuemu, // Make valuemu nullable in the constructor
  });

  // Convert a Task object into a Map object for inserting data into the database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'valuemu': valuemu,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  // Convert a Map object into a Task object for displaying in the UI
  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      valuemu: map['valuemu'], // Allow valuemu to be null
      isCompleted: map['isCompleted'] == 1,
    );
  }
}
