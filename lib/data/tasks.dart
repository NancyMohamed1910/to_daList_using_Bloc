class TaskData {
  static List<Task> title = [];
}

class Task {
  String title;
  String description;
  bool completed;
  Task(this.title, this.description, this.completed);
}
