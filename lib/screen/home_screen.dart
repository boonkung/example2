import 'package:card_swiper/card_swiper.dart';
import 'package:example2/interface/my_banner.dart';
import 'package:example2/screen/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MyBanner> banners = [
    MyBanner(
        id: 1,
        image:
            "https://www.cmru.ac.th/assets/images/banners/th/10-05-2022/0cbb9fcbf628d81dfcd99d467cec92359cae3da4.png",
        title: "Covid Day",
        link: ""),
    MyBanner(
        id: 2,
        image:
            "https://www.cmru.ac.th/assets/images/banners/th/03-08-2022/2e4d94c11d47ae8dfa8c31ddc0bdf652801cff56.png",
        title: "What is this",
        link: "/"),
    MyBanner(
        id: 3,
        image:
            "https://www.cmru.ac.th/assets/images/banners/th/02-05-2022/5b13d8b42e412d8c1c13d442701242d4a0cddbfb.png",
        title: "Mother Day",
        link: "/"),
  ];

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 160,
              color: Colors.red,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.network(
                    banners[index].image,
                    fit: BoxFit.cover,
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: false,
                itemCount: banners.length,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
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
