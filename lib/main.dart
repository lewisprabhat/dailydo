import 'package:dailydo/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dailydo/Model/data.dart';



void main() {
  runApp( ToDo());
}

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: ( context) => Data(),
      builder: (context,child)  => MaterialApp(
        title: 'ToDo App',
        home: Home(),
      ),
    );
  }
}
