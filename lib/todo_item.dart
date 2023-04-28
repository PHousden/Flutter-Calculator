import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  State<ToDoItem> createState() => _ToDOItemState();
}

class _ToDOItemState extends State<ToDoItem> {
  List<ToDoItem> _todoItems = [];

  @override
  Widget build(BuildContext context) {
    // TODO Card.
    return Scaffold(
      body: ListTile(
          leading: const Text("ToDo", style: TextStyle(fontSize: 20)),
          onTap: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: const Color.fromRGBO(204, 119, 34, 100),
          trailing: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _todoItems.add(const ToDoItem());
          });
        },
        backgroundColor: const Color.fromRGBO(136, 45, 23, 100),
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );

  }
}





