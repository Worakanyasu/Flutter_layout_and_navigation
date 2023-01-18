import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My group members"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(context: context, color: Colors.yellow, blocktext: "Kachen Jantaket", picture:"assets/images/001.jpg", mobile: '0880503773', stuid: '633410006-3'),
              Card(context: context, color: Colors.green, blocktext: "Rapeepat Klangbunrueang", picture:"assets/images/002.jpg", mobile: '0934213501', stuid: '633410027-5'),
              Card(context: context, color: Colors.lime, blocktext: "Worakanya Sunet", picture:"assets/images/003.jpg", mobile: '0826977663', stuid: '633410028-3'),
              Card(context: context, color: Colors.amber, blocktext: "Supanya Aunudom", picture:"assets/images/004.jpg", mobile: '0982156323', stuid: '633410033-0'),
              Card(context: context, color: Colors.cyan, blocktext: "Arisa Phattama", picture:"assets/images/005.jpg", mobile: '0935020001', stuid: '633410041-1'),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String picture,
      required String mobile,
      required String stuid}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    name: blocktext,
                    picture: picture,
                    mobile: mobile,
                    stuid: stuid,

                  )));
        },
        child: Column(
          children: [
            Image.asset(
              picture,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({required this.name, required this.picture, required this.stuid, required this.mobile});
  String name;
  String picture;
  String stuid;
  String mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My group members"),
        ),
        body: Column(
          children: [Text(name), Text(stuid), Text(mobile)],
        ),);
  }
}
