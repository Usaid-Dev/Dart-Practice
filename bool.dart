void main() {
  var listoftask = [
    {
      "taskName": "Do Assignment 5",
      "isCompleted": false,
      "submissionDate": 29,
    },
    {
      "taskName": "Do Assignment 4",
      "isCompleted": true,
      "submissionDate": 26,
    },
    {
      "taskName": "Do Assignment 3",
      "isCompleted": true,
      "submissionDate": 19,
    },
    {
      "taskName": "Do Assignment 2",
      "isCompleted": false,
      "submissionDate": 12,
    },
    {"taskName": "Do Assignment 1", "isCompleted": true, "submissionDate": 5}
  ];

  print("\n All Tasks: \n");
  for (var task in listoftask) {
    task.forEach((a, b) => print(" $a : $b "));
    print("\n");
  }

  List<String> completedList = completedTask(listoftask);
  print("List of completed tasks are: \n");
  for (String task in completedList) {
    print("Task: $task");
  }

  List<String> submission = checkSubmissionDate(listoftask);
  print("\nList of tasks completed between 10 and 20:\n");
  for (String task in submission) {
    print("Task: $task");
  }

  List<String> complete = completedTask(listoftask);
  print("\nList of completed task are: \n");
  for (String task in complete) {
    print("Task: $task Completed");
  }
}

List<String> completedTask(taskList) {
  List<String> completedTasks = [];
  String taskName = "";
  for (Map task in taskList) {
    for (String key in task.keys) {
      if (task[key] == true) {
        completedTasks.add(task[taskName]);
        break;
      } else {
        taskName = key;
      }
    }
  }
  return completedTasks;
}

List<String> checkSubmissionDate(taskList) {
  List<String> completeTask = [];
  for (Map task in taskList) {
    if (task["submissionDate"] > 10 && task["submissionDate"] < 20) {
      completeTask.add(task["taskName"]);
    }
  }
  return completeTask;
}
