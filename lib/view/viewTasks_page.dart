import 'package:flutter/material.dart';
import 'package:todolist_using_bloc/dataModel/tasks.dart';
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
      body: Container(
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
              itemCount: 5, //Tasks.title.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      //color: viewModel.clrLvl1,
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                      title: Text('hi bloc', //Tasks.title[index],
                          style: TextStyle(
                              //color: viewModel.clrLvl4,
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500))),
                );
                //---
              })),
    );
  }
}
