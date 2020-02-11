import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';



// class AddTaskScreen extends StatefulWidget {
//   @override
//   _AddTaskScreenState createState() => _AddTaskScreenState();
// }

// class _AddTaskScreenState extends State<AddTaskScreen> {
//   String newTaskTitle;
//   @override
//   Widget build(BuildContext context) {
    

//     return Container(
//       color: Color(0xff757575),
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20.0),
//             topRight: Radius.circular(20.0),
//           ),
//           color: Colors.white,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               'Add Task',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.lightBlueAccent,
//                 fontSize: 30.0,
//               ),
//             ),
//             TextField(
//               autofocus: true,
//               textAlign: TextAlign.center,
//               onChanged: (newText) {
//                 newTaskTitle = newText;
//               },
//             ),
//             FlatButton(
//               child: Text(
//                 'Add',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               color: Colors.lightBlueAccent,
//               onPressed: () {
//                 Provider.of<TaskData>(context).addTask(newTaskTitle);
//                 Navigator.pop(context);
//                 // if (newTaskTitle != null) {
//                 //   addTaskCallback(newTaskTitle);
//                 // }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class AddTaskScreen extends StatelessWidget {
  static String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
                // if (newTaskTitle != null) {
                //   addTaskCallback(newTaskTitle);
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
