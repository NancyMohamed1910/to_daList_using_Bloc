import 'package:flutter/material.dart';
import 'package:todolist_using_bloc/view/viewTasks_page.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TextEditingController entryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Add your task :',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 5),
                    filled: true,
                    //   fillColor: viewModel.clrLvl2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none))),
                textAlign: TextAlign.center,
                //textAlignVertical: TextAlignVertical.center,
                autofocus: true,
                autocorrect: false,
                controller: entryController,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (entryController.text.isNotEmpty) {
                      entryController.clear();
                    }
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => ViewTaskPage()));
                  },
                  child: Text(
                    'Add Task',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
