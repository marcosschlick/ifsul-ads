import 'package:flutter/material.dart';
import 'package:prova/task.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _nameController = TextEditingController();

  void addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }

  var tasks = [
    Task(name: "tarefa de teste 1"),
    Task(name: "tarefa de teste 2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Lista de tarefas"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Nome da tarefa",
                          hintText: "Digite o nome da tarefa",
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (_nameController.text.isNotEmpty) {
                            addTask(Task(name: _nameController.text));
                          }
                        },
                        child: Text("Adicionar"),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(tasks[index].name));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
