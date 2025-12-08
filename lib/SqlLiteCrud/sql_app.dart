import 'package:flutter/material.dart';
import 'package:my_app/SqlLiteCrud/user_list.dart';

void main(List<String> args) {
  runApp(DbApp());
}

class DbApp extends StatelessWidget {
  const DbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User LIST',
      home: UserList(),
    );
  }
}
