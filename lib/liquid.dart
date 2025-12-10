import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_app/home.dart';
import 'package:my_app/product.dart';
import 'package:my_app/routes.dart';
import 'package:my_app/settings.dart';

void main() {
  runApp(LiquidSwift());
}

class LiquidSwift extends StatefulWidget {
  const LiquidSwift({super.key});

  @override
  State<LiquidSwift> createState() => _LiquidSwiftState();
}

class _LiquidSwiftState extends State<LiquidSwift> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Swift Liquid",
      home: Exam(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 21, color: Colors.blue),
        ),
      ),
    );
  }
}

class Swift extends StatefulWidget {
  const Swift({super.key});

  @override
  State<Swift> createState() => _SwiftState();
}

class _SwiftState extends State<Swift> {
  late final pages2 = [
    MainPage(),
    Product(),
    Settings(),
    Home(),
    Scaffold(
      appBar: AppBar(
        title: Text(
          "Scaffold Demo",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SizedBox(
        height: 100,
        width: 200,
        child: Text(
          "This is a Container",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: Colors.red),
        ),
      ),
    ),
    Exam(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SWIFT SCROLL ")),
      body: LiquidSwipe(pages: pages2),
    );
  }
}

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exam")),
      body: Padding(
        padding: const EdgeInsets.only(left: 6.0, right: 6.0),
        child: Column(
          spacing: 10,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.purple),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.greenAccent),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.purple),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.greenAccent),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
