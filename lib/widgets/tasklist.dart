import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';

import 'package:todoapp/widgets/tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';

class Tasklist extends StatefulWidget {
  //final List<Task> tasks;
  // Tasklist(this.tasks);
  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return Tasktile(
              taskTitle: task.name,
              ischecked: task.isdone,
              checkboxcallback: (bool checkboxstate) {
                taskdata.updatetask(task, task);
                //setState(() {
                //Provider.of<Taskdata>(context).tasks[index].toggledone();
                //});
              },
              longpresscallback: () {
                taskdata.deletetask(task, task);
              },
            );
          },
          itemCount: taskdata.taskcount,
        );
      },
    );
    //(children: [
    //Tasktile(tasktile: tasks[0].name, ischecked: tasks[0].isdone,),
    //Tasktile(tasktile: tasks[1].name, ischecked: tasks[1].isdone,),
    //Tasktile(tasktile: tasks[2].name, ischecked: tasks[2].isdone,),
    //Tasktile(tasktile: tasks[3].name, ischecked: tasks[3].isdone,),
    //]);
  }
}
