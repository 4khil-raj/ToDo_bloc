// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

TextEditingController titleController = TextEditingController();
TextEditingController descriptionController = TextEditingController();

class _AddTodoState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: titleController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(hintText: 'Add title'),
            ),
            SizedBox(
              width: 10,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Description'),
              maxLines: 5,
              controller: descriptionController,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 230,
              height: 40,
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16))),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}
