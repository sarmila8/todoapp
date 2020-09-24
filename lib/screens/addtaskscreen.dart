import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';

class Addtaskscreen extends StatefulWidget {
  @override
  _AddtaskscreenState createState() => _AddtaskscreenState();
}

class _AddtaskscreenState extends State<Addtaskscreen> {
  String newtasktitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add task',
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              onChanged: (newtext) {
                //print(newtext);
                newtasktitle = newtext;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: () {
                //print(newtasktitle);
                //final task = Task(name: newtasktitle);
                Provider.of<Taskdata>(context).addtask(newtasktitle);
                //.tasks.add(task);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
