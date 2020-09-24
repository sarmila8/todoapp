import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';
import 'package:todoapp/screens/taskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Taskdata(),
      create: (BuildContext context) {},
      child: MaterialApp(
        home: Taskscreen(),
      ),
    );
  }
}
