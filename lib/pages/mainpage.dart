import 'package:flutter/material.dart';
import 'package:todo_app/assets/colors.dart';
import 'package:todo_app/containers/addlist.dart';
import 'package:todo_app/containers/list.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TodoList App",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: white),
        ),
        backgroundColor: blue,
      ),
      body: Column(children: [
        Column(children: [
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList(),
          TodoList()
        ]),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            )
          ],
        ))
      ]),
    );
  }
}
