// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// stateless widget base app
class MyApp extends StatelessWidget {
  // constructor
  MyApp({super.key});

  // variables
  String name = "Kamil";

  // list: ordered collections of elements, can have duplicates
  List number = [1, 2, 3, 4, 5];
  List<String> names = ["Kamil", "Ahmet", "Mehmet", "Ali", "Veli"];

  // set: unordered collections of unqiue elements
  Set unqiue = {"Kamil", "Ahmet", "Mehmet", "Ali", "Veli"};

  // map: key-value pairs
  Map<String, String> user = {
    "name": "Kamil",
    "surname": "Yilmaz",
    "age": "25",
  };
  Map user2 = {
    "name": "Kamil",
    "surname": "Yilmaz",
    "age": "25",
  };

  //function / method
  void changeName(String inputName) {
    name = inputName;
  }

  @override
  Widget build(BuildContext context) {
    print("in console");

    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner

      home: Scaffold(
          // body is a widget
          backgroundColor:
              Color.fromARGB(255, 205, 223, 238), // set background color

          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0, // remove shadow

            title: Text(
              "appbar title",
              style: TextStyle(color: Colors.white),
            ),

            leading:
                Icon(Icons.menu), // set icon in the left side of the appbar

            actions: [
              // set icons in the right side of the appbar
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
            ],
          ),

          // body
          body: Center(
            // center the widget
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue,

              padding: EdgeInsets.symmetric(
                  // padding horizontal and vertical
                  horizontal: 20,
                  vertical: 20),
              padding: EdgeInsets.all(20), // padding all sides
              padding: EdgeInsets.only(
                  left: 1,
                  right: 1,
                  top: 1,
                  bottom: 1), // padding each side separately

              child: Text(
                "text in the container",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Column(
            // column widget
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                // fill the remaining space
                flex: 2, // flex
                child: Container(
                  color: Colors.red[100],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red[200],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red[300],
                ),
              )
            ],
          ),

          body: ListView( // scrollable list view
            scrollDirection: Axis.vertical, // scroll direction
            children: [
              Container(
                height: 350,
                color: Colors.blue,
              ),
              Container(
                height: 350,
                color: Colors.blue[100],
              ),
              Container(
                height: 350,
                color: Colors.blue[200],
              ),
            ],
          ),

          body: ListView.builder( // scrollable list view with builder
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                    title: Text("Item $index"),
                    subtitle: Text("Subtitle $index"),
                    leading: Icon(Icons.favorite),
                    trailing: Icon(Icons.arrow_forward),
                  )),
    );
  }
}
