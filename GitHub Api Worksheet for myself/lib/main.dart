import 'package:api/local_json.dart';
import 'package:api/remote_api.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Http Json',
      home: RemoteApi(),
    );
  }

  Scaffold ilkAnaSayf(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Json'),
      ),
      body: Center(
        child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LocalJson(),
              ));
            },
            icon: const Icon(Icons.next_plan_rounded)),
      ),
    );
  }
}
