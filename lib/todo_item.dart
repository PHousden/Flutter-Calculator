import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ListTile(
        leading: const Text("ToDo", style: TextStyle(fontSize: 20)),
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: const Color.fromRGBO(204, 119, 34, 100),
        trailing: const Icon(Icons.delete,color: Colors.red,),
      ),
    );
  }
}
