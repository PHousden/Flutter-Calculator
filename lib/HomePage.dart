import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ToDo> _todoItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        // Title
        title: const Text("To Do List"),
        // make them stay in the middle
        centerTitle: true,
        // set background colour
        backgroundColor: const Color.fromRGBO(204, 119, 34, 100),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 50, bottom: 20, left: 30),
            child: const Text(
              'All To Do',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todoItems.length,
              itemBuilder: (BuildContext context, int index) {
                final todo = _todoItems[index];
                return ToDoItem(
                  title: todo.title,
                  isCompleted: todo.isCompleted,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _todoItems.add(ToDo(
              title: 'New To-Do Item',
            ));
          });
        },
        backgroundColor: const Color.fromRGBO(136, 45, 23, 100),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}


class ToDoItem extends StatelessWidget {
  final String title;
  final bool isCompleted;

  const ToDoItem({
    Key? key,
    required this.title,
    this.isCompleted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ListTile(
          leading: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              decoration:
              isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: const Color.fromRGBO(204, 119, 34, 100),
          trailing: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )))),
    );
  }
}

class ToDo {
  String title;
  bool isCompleted;

  ToDo({
    required this.title,
    this.isCompleted = false,
  });
}
