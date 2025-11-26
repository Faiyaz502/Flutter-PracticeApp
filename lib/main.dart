import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home :Practice(),
    );
  }
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
  
   return Scaffold(
      appBar: AppBar(
        title:Center(
         child:Text("App bar")) ,
        titleSpacing: 10,
        toolbarHeight: 50,
        centerTitle:true,
        backgroundColor: Colors.amberAccent,
        toolbarOpacity: .5,
        actions: [
          IconButton(onPressed:() =>{
            print("Serching,...."),
            Fluttertoast.showToast(msg: "Searching man take a breath"
            ,toastLength: Toast.LENGTH_SHORT ,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.white)
            
            
          }
           , icon: Icon(Icons.search)),
          IconButton(onPressed:() =>{
            print("Car,....")
          }
           , icon: Icon(Icons.car_rental)),
          IconButton(onPressed:() =>{
            print("Travelling,....")
          }
           , icon: Icon(Icons.card_travel)),
        ],
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: 200.00,
          color: Color.fromARGB(255, 97, 180, 354),
          child: Center(
            child: Text(
              "Hellow",
              style: TextStyle(
                fontSize: 40 ,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,

              ),
              
            ),
        
          ),
          
        ),
        
      ),

   );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
