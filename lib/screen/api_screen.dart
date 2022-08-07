import 'package:flutter/material.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({Key? key}) : super(key: key);

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  List<String> thaiFoods = [
    "Somtom",
    "Khaosoi",
    "Kaiyang",
    "Tomyamkung",
    "PadThai",
    "Noodle",
    "Mango",
    "Somtom",
    "Khaosoi",
    "Kaiyang",
    "Tomyamkung",
    "PadThai",
    "Noodle",
    "Mango",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fast Foods")),
      body: ListView.builder(
        itemCount: thaiFoods.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(thaiFoods[index]),
            ),
          );
        },
      ),
    );
  }
}
