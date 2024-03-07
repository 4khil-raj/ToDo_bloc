// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_bloc/view/add_todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 12),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.orange,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (addtodo) => AddTodo()));
          },
          icon: Icon(
            Icons.add,
            size: 30,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          label: Text("Add New",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Just Do It',
          style: TextStyle(color: Colors.orange),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
      body: Column(),
    );
  }
}
