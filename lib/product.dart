import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "MY Product PAGE",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),
      ),
    );
  }
  }
