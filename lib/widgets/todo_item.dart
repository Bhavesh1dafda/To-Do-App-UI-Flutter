import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem(
      {Key? key,
      required this.todo,
      required this.onToDoChange,
      required this.onDeletItem})
      : super(key: key);
  final ToDo todo;
  final onToDoChange;
  final onDeletItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText.toString(),
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              onDeletItem(todo.id);
            },
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
