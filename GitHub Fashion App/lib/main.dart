import 'package:flutter/material.dart';
import 'package:tasarim/alt_baslik.dart';
import 'package:tasarim/baslik.dart';
import 'package:tasarim/stories.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda Uygulaması',
      home: anaSayfa(),
    );
  }

  Scaffold anaSayfa() {
    return Scaffold(
      appBar: baslik,
      body: stories,
      bottomNavigationBar: altbaslik,
    );
  }
}
