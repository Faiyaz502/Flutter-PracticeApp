import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "MY HOME PAGE",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),
      ),
    );
  }
}
