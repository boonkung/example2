import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int number = 0;

  String name = "God of war";
  void increments() {
    setState(() {
      number++;
    });
  }

  void decrements() {
    setState(() {
      number--;
    });
  }

  void ChangeName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlayScreen"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Now value is  : ${number}"),
            Text("Name is : ${name}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: increments,
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: decrements,
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () => {ChangeName("God of bin")},
                  child: Icon(Icons.edit),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
