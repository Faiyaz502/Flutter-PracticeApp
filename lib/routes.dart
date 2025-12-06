import 'dart:math';
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:my_app/practice.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Routing",
      initialRoute: '/',

      routes: {
        '/demo': (context) => demoPage(),
        '/form': (context) => FormFill(),
        '/main': (context) => MainPage(),
        '/': (context) => ECPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Routing"),
        backgroundColor: Colors.blue,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: Text('Form Fill Up Page'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => demoPage()),
                );
              },
              child: Text('demo Page'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(
                      title: "Fahim Faiyaz",

                      count: 10,
                      onTapMessage: handleMessage,
                    ),
                  ),
                );
              },
              child: Text('About Page'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void handleMessage(String s) {
    debugPrint("funtion called : $s");
  }
}

class About extends StatelessWidget {
  final String title;
  final String? subtitle;
  final int count;
  final Function(String)? onTapMessage;

  const About({
    super.key,
    required this.title,
    this.subtitle,
    this.count = 0,
    this.onTapMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Card(
        elevation: 5,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(fontSize: 22)),

            if (subtitle != null)
              Text(subtitle!, style: TextStyle(fontSize: 12)),

            const SizedBox(height: 10),

            Text('Count : $count'),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                if (onTapMessage != null) {
                  onTapMessage!("Button tapped");
                } else {
                  Navigator.pop(context);
                }
              },
              child: onTapMessage != null
                  ? const Text("Send Callback")
                  : const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class ECPage extends StatelessWidget {
  ECPage({super.key});

  List<ProductCardModel> products = [
    ProductCardModel(
      names: "Smartphone",
      img: "https://picsum.photos/200",
      price: 299.99,
    ),
    ProductCardModel(
      names: "Headphones",
      img: "https://picsum.photos/201",
      price: 49.99,
    ),
    ProductCardModel(
      names: "Laptop",
      img: "https://picsum.photos/202",
      price: 799.99,
    ),
  ];

  final category = [
    'All',
    'Electronics',
    'Fashion',
    'Beauty',
    'Harbal',
    'Clothings',
    'Toys',
    'SmartPhones',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce '),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_checkout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Products...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            //Tags
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),

                    child: Chip(
                      label: Text(
                        category[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: const Color.fromARGB(255, 218, 119, 119),
                    ),
                  );
                },
                itemCount: category.length,
              ),
            ),

            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return ProductCardWidget(product: products[index]);
                ;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCardModel {
  final String names;
  final String img;
  final double price;

  ProductCardModel({
    required this.names,
    required this.img,
    required this.price,
  });
}

// Product widget
class ProductCardWidget extends StatelessWidget {
  final ProductCardModel product;

  const ProductCardWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.network(product.img, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.names,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text("\$${product.price.toStringAsFixed(2)}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
