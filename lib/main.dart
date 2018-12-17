import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return  Container(
            height: 250.0,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image.asset(
              "images/${index+1}.jpg",  // 1440*2560
              //"images/new/${index+1}.png", // 600*300
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: 9,
      ),
    );
  }
}
