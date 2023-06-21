import 'package:dailydo/Model/Task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dailydo/Model/data.dart';

class AddTask extends StatefulWidget {

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
final taskController = TextEditingController();
@override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                  child: Text(
                   'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              ),
            ),
             SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller:  taskController


              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Container(
                color: Colors.lightBlueAccent,
                width: 150,
                child: TextButton(
                    onPressed: () {
                  Provider.of<Data>(context, listen: false).addtask(taskController.text);
                  Navigator.pop(context);

                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
