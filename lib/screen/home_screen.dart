import 'package:example2/screen/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "My name is StatefulWidget";
  int age = 20;
  bool lookingGood = true;
  List<String> myDognames = ["LoongG", "New York", "Tokyo", "Hongkong"];
  Map<String, dynamic> user = {
    "id": 1,
    "name": "god of war",
    "sex": "male",
    "married": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello $name"),
            Text("My age $age years old"),
            Text("My looking good is ${lookingGood ? "yes" : "no"}"),
            Text("My dog name is ${myDognames[1]}"),
            // ...myDognames.map((e) => Text(e)).toList(),
            Text("My friend  name is ${user["name"]}"),
            Text("She is ${user["married"] ? "married" : "no married"}"),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutScreen();
                    },
                  ),
                )
              },
              child: Text("Go to about screen"),
            ),
          ],
        ),
      ),
    );
  }
}
