import 'package:todolist_using_bloc/cubit/todoTask_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoTaskCubit extends Cubit<ToDoTaskState> {
  ToDoTaskCubit() : super(ToDoTaskInitState());
  static ToDoTaskCubit get(context) => BlocProvider.of<ToDoTaskCubit>(context);
  //List<String> title = [];
  String title = '';
}
