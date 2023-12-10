import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist_using_bloc/cubit/todoTask_cubit.dart';
import 'package:todolist_using_bloc/cubit/todoTask_state.dart';
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
      body: BlocConsumer<ToDoTaskCubit, ToDoTaskState>(listener: (_, state) {
        // addTaskStateSuccess();
      }, builder: (_, stat) {
        var cubit = ToDoTaskCubit.get(context);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Add your task :',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 5),
                  filled: true,
                  //   fillColor: viewModel.clrLvl2,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none))),
              textAlign: TextAlign.center,
              //textAlignVertical: TextAlignVertical.center,
              autofocus: true,
              autocorrect: false,
              controller: entryController,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  cubit.addTask(entryController.text);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => ViewTaskPage()));
                },
                child: Text(
                  'Save Task',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ))
          ],
        );
      }),
    );
  }
}
