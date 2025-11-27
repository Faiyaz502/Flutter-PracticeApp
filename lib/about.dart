import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "MY About PAGE",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),
      ),
    );
  }
  }
