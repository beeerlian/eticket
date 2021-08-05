import 'package:flutter/material.dart';
import 'package:wisata_app/pages/MainPage.dart';
import 'package:wisata_app/model/kursi.dart';
void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata App",
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}
