import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist_using_bloc/cubit/todoTask_cubit.dart';
import 'package:todolist_using_bloc/cubit/todoTask_state.dart';
import 'package:todolist_using_bloc/view/addTask_page.dart';

class ViewTaskPage extends StatefulWidget {
  const ViewTaskPage({super.key});

  @override
  State<ViewTaskPage> createState() => _ViewTaskPageState();
}

class _ViewTaskPageState extends State<ViewTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ToDoTaskCubit, ToDoTaskState>(
        listener: (_, state) {},
        builder: (_, state) {
          var cubit = ToDoTaskCubit.get(context);
          return Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: ListView.separated(
                  padding: EdgeInsets.all(15),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: cubit.getLength(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          //color: viewModel.clrLvl1,
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                          title: Text(cubit.getTaskTitle(index),
                              //ToDoTaskCubit.tasks[
                              //    index], //Text('hi bloc', //Tasks.title[index],
                              style: TextStyle(
                                  //color: viewModel.clrLvl4,
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500))),
                    );
                    //---
                  }));
        },
      ),
    );
  }
}
