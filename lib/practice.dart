import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(demo());
}

class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FormFill());
  }
}

class demoPage extends StatelessWidget {
  demoPage({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Widget Demo"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage.assetNetwork(
                placeholder: "assets/df.jpg",
                image:
                    'https://images.unsplash.com/photo-1488161628813-04466f872be2?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 500),
              ),
              SizedBox(height: 20),
              Text(
                "Hello Fahim !!!! <3",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 63, 26, 141),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        "This is a Container with padding,Border,Color.",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.favorite_outline, color: Colors.red, size: 30),
                      SizedBox(height: 10),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      SizedBox(height: 10),
                      Icon(Icons.favorite_outline, color: Colors.red, size: 30),
                      SizedBox(height: 10),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      SizedBox(height: 10),
                      Icon(Icons.favorite_outline, color: Colors.red, size: 30),
                      SizedBox(height: 10),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter Your name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person, color: Colors.blue),
                  labelStyle: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  final name = nameController.text;
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Hellow $name")));
                },
                icon: Icon(Icons.check, color: Colors.green),
                label: Text("Submit"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: const Color.fromARGB(255, 184, 219, 247),
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/sdg.jpg'),
              SizedBox(height: 20),
              Image.asset('assets/df.jpg'),
              SizedBox(height: 20),
              Image.asset('assets/gsdfg.jpg'),
              SizedBox(height: 20),
              Image.network(
                'https://images.unsplash.com/photo-1459802071246-377c0346da93?q=80&w=409&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                height: 150,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1488161628813-04466f872be2?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.black,
                  ),

                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/gsdfg.jpg'),
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(onPressed: () {}, child: Text("Button")),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class FormFill extends StatefulWidget {
  const FormFill({super.key});

  @override
  State<FormFill> createState() => _FormFillState();
}

class _FormFillState extends State<FormFill> {
  TextEditingController nameEd = TextEditingController();
  TextEditingController emailEd = TextEditingController();
  TextEditingController passEd = TextEditingController();
  TextEditingController numberEd = TextEditingController();
  TextEditingController multilineEd = TextEditingController();

  String? selectedGender;
  bool agree = false;
  bool notification = false;
  DateTime? selectedDate;

  void ShowToast() {
    Fluttertoast.showToast(
      msg:
          "Name : ${nameEd.text}\n Email : ${emailEd.text}\n Password : ${passEd.text}\n Number : ${numberEd.text}\n Multiline : ${multilineEd.text}\n ",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please Fill the form"),
        titleTextStyle: TextStyle(color: Colors.black12, fontSize: 30),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        children: [
          //Name
          TextField(
            controller: nameEd,
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          //Email
          TextField(
            controller: emailEd,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          //Password
          TextField(
            controller: passEd,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          //Phone
          TextField(
            controller: numberEd,
            decoration: InputDecoration(
              labelText: "Phone Number",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          //Address -> Multiple line
          TextField(
            controller: multilineEd,
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "Address ",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          DropdownButtonFormField<String>(
            value: selectedGender,
            decoration: InputDecoration(
              labelText: "Gender",
              border: OutlineInputBorder(),
            ),
            items: [
              "Male",
              "Female",
            ].map((g) => DropdownMenuItem(value: g, child: Text(g))).toList(),
            onChanged: (value) {
              setState(() {
                selectedGender = value;
              });
            },
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: agree,
                onChanged: (val) {
                  setState(() {
                    agree = val!;
                  });
                },
              ),
              Text("Agree terms and conditions."),
            ],
          ),
        ],
      ),
    );
  }
}
