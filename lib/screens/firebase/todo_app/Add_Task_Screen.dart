import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_learning/screens/firebase/todo_app/Task_List_Screen.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

var taskController = TextEditingController();

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                hintText: 'Task',
              ),
            ),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              var task = taskController.text.trim();
              if(task.isEmpty)
                {
                  Fluttertoast.showToast(msg: 'add the task', gravity: ToastGravity.CENTER);
                  return;
                }
              Navigator.pop(context, MaterialPageRoute(builder: (context) => TaskList()));
            }, child: Text('Add Task'))
          ],
        ),
      ),
    );
  }
}
