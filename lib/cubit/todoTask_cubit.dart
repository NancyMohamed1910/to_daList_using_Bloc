import 'package:todolist_using_bloc/cubit/todoTask_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoTaskCubit extends Cubit<ToDoTaskState> {
  ToDoTaskCubit() : super(ToDoTaskInitState());
  static ToDoTaskCubit get(context) => BlocProvider.of<ToDoTaskCubit>(context);
  static List<String> tasks = [];
  static String title = '';
  void addTask(String title) {
    tasks.add(title);
    print('$tasks');
    emit(addTaskStateSuccess());
  }

  int getLength() {
    return tasks.length;
  }

  String getTaskTitle(int index) {
    return title = tasks[index];
  }
}
