import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist_using_bloc/cubit/todoTask_cubit.dart';
import 'package:todolist_using_bloc/view/addTask_page.dart';
import 'package:todolist_using_bloc/view/viewTasks_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      child: MaterialApp(
        title: 'ToDoList Application',
        debugShowCheckedModeBanner: false,
        home: AddTaskPage(),
      ),
      providers: [
        BlocProvider(
          create: (_) => ToDoTaskCubit(),
          child: AddTaskPage(),
        ),
        /*BlocProvider(
          create: (context) => ToDoTaskCubit(),
          child: ViewTaskPage(),
        ),*/
      ],
    );
  }
}
