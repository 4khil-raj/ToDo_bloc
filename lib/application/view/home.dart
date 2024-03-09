// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo_bloc/application/view/add_todo.dart';
import 'package:todo_bloc/domain/bloc/todo_bloc.dart';

class TodoWrapper extends StatelessWidget {
  const TodoWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(),
      child: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(microseconds: 1), () {
      BlocProvider.of<TodoBloc>(context).add(TodoRequestEvent());
    });
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
          label: Text(
            "Add New",
          ),
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
      body: SingleChildScrollView(
        child: BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
          if (state is TodoInitial) {
            return Center(
              child: Text('Loading......'),
            );
          } else if (state is TodoStateLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            );
          } else if (state is TodoStateLoaded) {
            return ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: Text('${state.todo[index].title}',
                    style: TextStyle(color: Colors.white)),
                subtitle: Text('${state.todo[index].description}'),
              );
            });
          } else if (state is TodoStateError) {
            return Center(
              child: Text(
                state.massage,
                style: TextStyle(color: Colors.amber),
              ),
            );
          } else {
            Center(
              child: Text('some error is there!!!'),
            );
          }
          return Center(
            child: Text('fdsfs'),
          );
        }),
      ),
    );
  }
}
