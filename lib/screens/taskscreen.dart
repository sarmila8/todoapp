import 'package:flutter/material.dart';
import 'package:todoapp/screens/addtaskscreen.dart';
//import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/tasklist.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';

class Taskscreen extends StatefulWidget {
  @override
  _TaskscreenState createState() => _TaskscreenState();
}

class _TaskscreenState extends State<Taskscreen> {
  get provider => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Addtaskscreen(),
            // (newtasktitle)

            // setState(() {
            // tasks.add(Task(name: newtasktitle));
            // });
            //Navigator.pop(context);
            //print(newtasktitle);
          );
        },
        // backgroundColor: Colors.lightBlueAccent,
        // child: Icon(
        //Icons.add,
        //color: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('ToDoApp',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold)),
                Text('${provider.of<Taskdataobject>(context).taskcount} tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Tasklist()),
          ),
        ],
      ),
    );
  }
}

class Taskdataobject {}
