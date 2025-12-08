
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/about.dart';
import 'package:my_app/home.dart';
import 'package:my_app/product.dart';
import 'package:my_app/settings.dart';

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
      home: MyStf(),
    );
  }
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("App bar")),
        titleSpacing: 10,
        toolbarHeight: 50,
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        toolbarOpacity: .5,
        // actions: [
        //   IconButton(onPressed:() =>{
        //     print("Serching,...."),
        //     Fluttertoast.showToast(
        //     msg: "Searching man take a breath"
        //     ,toastLength: Toast.LENGTH_SHORT ,
        //     gravity: ToastGravity.CENTER,
        //     backgroundColor: const Color.fromARGB(255, 190, 14, 14),
        //     textColor: Colors.black)
        //   }
        //    , icon: Icon(Icons.search)),
        //   IconButton(onPressed:() =>{
        //     print("Car,....")
        //   }
        //    , icon: Icon(Icons.car_rental)),
        //   IconButton(onPressed:() =>{
        //     print("Travelling,....")
        //   }
        //    , icon: Icon(Icons.drafts)),
        // ],
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
                fontSize: 40,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.account_balance)),
            IconButton(onPressed: () {}, icon: Icon(Icons.business)),
            IconButton(onPressed: () {}, icon: Icon(Icons.currency_bitcoin)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call, color: Colors.green, size: 50.00),
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

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Mr Unknown"),
            accountEmail: Text("Unknown Email"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/df.jpg',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Message"),
            iconColor: Colors.amber,
          ),
          IconButton(
            onPressed: () => {
              print("Serching,...."),
              Text("data", selectionColor: Colors.black),
              Fluttertoast.showToast(
                msg: "Searching man take a breath",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                backgroundColor: const Color.fromARGB(255, 190, 14, 14),
                textColor: Colors.black,
              ),
            },
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class MyStf extends StatefulWidget {
  const MyStf({super.key});

  @override
  State<MyStf> createState() => _MyStfState();
}

int _currentPage = 0;

final List<Widget> _pages = [Home(), About(), Product(), Settings()];

class _MyStfState extends State<MyStf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        selectedFontSize: BorderSide.strokeAlignCenter,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
       

        onTap: (index) =>{

            setState(() {
              _currentPage = index;
            })

        } ,



        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box_sharp),
            label: "Product",
          ),
        ],
      ),
    );
  }
}
