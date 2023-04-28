import 'package:flutter/material.dart';
import 'package:to_do_list/HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //Getting the Debug banner off
      debugShowCheckedModeBanner: false,
      // Home Page
      home: HomePage(),
    );
  }
}

