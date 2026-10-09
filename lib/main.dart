import 'package:flutter/material.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TaskHomePage(),
    );
  }
}

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  final List<Task> tasks = [
    Task(title: 'Learn Flutter', completed: true),
    Task(title: 'Build first app', completed: false),
    Task(title: 'Connect to API', completed: false),
  ];

  void toggleTask(int index, bool? value) {
    setState(() {
      tasks[index].completed = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];

          return TaskItem(
            task: task,
            onChanged: (value) => toggleTask(index, value),
          );
        },
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final Task task;
  final ValueChanged<bool?> onChanged;

  const TaskItem({super.key, required this.task, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: CheckboxListTile(
        value: task.completed,
        onChanged: onChanged,
        title: Text(
          task.title,
          style: TextStyle(
            decoration: task.completed
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}

class Task {
  final String title;
  bool completed;

  Task({required this.title, required this.completed});
}
